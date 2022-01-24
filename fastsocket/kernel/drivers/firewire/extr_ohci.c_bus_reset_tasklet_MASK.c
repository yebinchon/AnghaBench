#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct fw_ohci {int node_id; int* self_id_buffer; int generation; int request_generation; TYPE_1__ card; int /*<<< orphan*/  lock; int /*<<< orphan*/  next_header; int /*<<< orphan*/ * config_rom; int /*<<< orphan*/ * next_config_rom; int /*<<< orphan*/  next_config_rom_bus; int /*<<< orphan*/  config_rom_bus; scalar_t__ bus_reset_packet_quirk; int /*<<< orphan*/  at_response_ctx; int /*<<< orphan*/  at_request_ctx; int /*<<< orphan*/ * self_id_cpu; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ROM_SIZE ; 
 int /*<<< orphan*/  OHCI1394_BusOptions ; 
 int /*<<< orphan*/  OHCI1394_ConfigROMhdr ; 
 int /*<<< orphan*/  OHCI1394_IntEventClear ; 
 int /*<<< orphan*/  OHCI1394_NodeID ; 
 int OHCI1394_NodeID_busNumber ; 
 int OHCI1394_NodeID_idValid ; 
 int OHCI1394_NodeID_nodeNumber ; 
 int /*<<< orphan*/  OHCI1394_PhyReqFilterHiSet ; 
 int /*<<< orphan*/  OHCI1394_PhyReqFilterLoSet ; 
 int /*<<< orphan*/  OHCI1394_SelfIDCount ; 
 int OHCI1394_SelfIDCount_selfIDError ; 
 int /*<<< orphan*/  OHCI1394_busReset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int*) ; 
 int FUNC8 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(unsigned long data)
{
	struct fw_ohci *ohci = (struct fw_ohci *)data;
	int self_id_count, i, j, reg;
	int generation, new_generation;
	unsigned long flags;
	void *free_rom = NULL;
	dma_addr_t free_rom_bus = 0;

	reg = FUNC8(ohci, OHCI1394_NodeID);
	if (!(reg & OHCI1394_NodeID_idValid)) {
		FUNC6("node ID not valid, new bus reset in progress\n");
		return;
	}
	if ((reg & OHCI1394_NodeID_nodeNumber) == 63) {
		FUNC6("malconfigured bus\n");
		return;
	}
	ohci->node_id = reg & (OHCI1394_NodeID_busNumber |
			       OHCI1394_NodeID_nodeNumber);

	reg = FUNC8(ohci, OHCI1394_SelfIDCount);
	if (reg & OHCI1394_SelfIDCount_selfIDError) {
		FUNC6("inconsistent self IDs\n");
		return;
	}
	/*
	 * The count in the SelfIDCount register is the number of
	 * bytes in the self ID receive buffer.  Since we also receive
	 * the inverted quadlets and a header quadlet, we shift one
	 * bit extra to get the actual number of self IDs.
	 */
	self_id_count = (reg >> 3) & 0xff;
	if (self_id_count == 0 || self_id_count > 252) {
		FUNC6("inconsistent self IDs\n");
		return;
	}
	generation = (FUNC1(ohci->self_id_cpu[0]) >> 16) & 0xff;
	FUNC10();

	for (i = 1, j = 0; j < self_id_count; i += 2, j++) {
		if (ohci->self_id_cpu[i] != ~ohci->self_id_cpu[i + 1]) {
			FUNC6("inconsistent self IDs\n");
			return;
		}
		ohci->self_id_buffer[j] =
				FUNC1(ohci->self_id_cpu[i]);
	}
	FUNC10();

	/*
	 * Check the consistency of the self IDs we just read.  The
	 * problem we face is that a new bus reset can start while we
	 * read out the self IDs from the DMA buffer. If this happens,
	 * the DMA buffer will be overwritten with new self IDs and we
	 * will read out inconsistent data.  The OHCI specification
	 * (section 11.2) recommends a technique similar to
	 * linux/seqlock.h, where we remember the generation of the
	 * self IDs in the buffer before reading them out and compare
	 * it to the current generation after reading them out.  If
	 * the two generations match we know we have a consistent set
	 * of self IDs.
	 */

	new_generation = (FUNC8(ohci, OHCI1394_SelfIDCount) >> 16) & 0xff;
	if (new_generation != generation) {
		FUNC6("recursive bus reset detected, "
			  "discarding self ids\n");
		return;
	}

	/* FIXME: Document how the locking works. */
	FUNC11(&ohci->lock, flags);

	ohci->generation = generation;
	FUNC2(&ohci->at_request_ctx);
	FUNC2(&ohci->at_response_ctx);
	FUNC9(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);

	if (ohci->bus_reset_packet_quirk)
		ohci->request_generation = generation;

	/*
	 * This next bit is unrelated to the AT context stuff but we
	 * have to do it under the spinlock also.  If a new config rom
	 * was set up before this reset, the old one is now no longer
	 * in use and we can free it. Update the config rom pointers
	 * to point to the current config rom and clear the
	 * next_config_rom pointer so a new udpate can take place.
	 */

	if (ohci->next_config_rom != NULL) {
		if (ohci->next_config_rom != ohci->config_rom) {
			free_rom      = ohci->config_rom;
			free_rom_bus  = ohci->config_rom_bus;
		}
		ohci->config_rom      = ohci->next_config_rom;
		ohci->config_rom_bus  = ohci->next_config_rom_bus;
		ohci->next_config_rom = NULL;

		/*
		 * Restore config_rom image and manually update
		 * config_rom registers.  Writing the header quadlet
		 * will indicate that the config rom is ready, so we
		 * do that last.
		 */
		FUNC9(ohci, OHCI1394_BusOptions,
			  FUNC0(ohci->config_rom[2]));
		ohci->config_rom[0] = FUNC3(ohci->next_header);
		FUNC9(ohci, OHCI1394_ConfigROMhdr, ohci->next_header);
	}

#ifdef CONFIG_FIREWIRE_OHCI_REMOTE_DMA
	reg_write(ohci, OHCI1394_PhyReqFilterHiSet, ~0);
	reg_write(ohci, OHCI1394_PhyReqFilterLoSet, ~0);
#endif

	FUNC12(&ohci->lock, flags);

	if (free_rom)
		FUNC4(ohci->card.device, CONFIG_ROM_SIZE,
				  free_rom, free_rom_bus);

	FUNC7(ohci->node_id, generation,
		    self_id_count, ohci->self_id_buffer);

	FUNC5(&ohci->card, ohci->node_id, generation,
				 self_id_count, ohci->self_id_buffer);
}