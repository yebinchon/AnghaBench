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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct fw_ohci {int self_id_bus; int next_config_rom_bus; int config_rom_bus; int next_header; TYPE_1__ card; scalar_t__* config_rom; scalar_t__* next_config_rom; int /*<<< orphan*/  ar_response_ctx; int /*<<< orphan*/  ar_request_ctx; } ;
struct fw_card {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ROM_SIZE ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OHCI1394_ATRetries ; 
 int /*<<< orphan*/  OHCI1394_AsReqFilterHiSet ; 
 int /*<<< orphan*/  OHCI1394_BusOptions ; 
 int /*<<< orphan*/  OHCI1394_ConfigROMhdr ; 
 int /*<<< orphan*/  OHCI1394_ConfigROMmap ; 
 int /*<<< orphan*/  OHCI1394_HCControlClear ; 
 int /*<<< orphan*/  OHCI1394_HCControlSet ; 
 int OHCI1394_HCControl_BIBimageValid ; 
 int OHCI1394_HCControl_LPS ; 
 int OHCI1394_HCControl_linkEnable ; 
 int OHCI1394_HCControl_noByteSwapData ; 
 int OHCI1394_HCControl_postedWriteEnable ; 
 int /*<<< orphan*/  OHCI1394_IntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IntMaskClear ; 
 int /*<<< orphan*/  OHCI1394_IntMaskSet ; 
 int /*<<< orphan*/  OHCI1394_LinkControlClear ; 
 int /*<<< orphan*/  OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_cycleMaster ; 
 int OHCI1394_LinkControl_cycleTimerEnable ; 
 int OHCI1394_LinkControl_rcvPhyPkt ; 
 int OHCI1394_LinkControl_rcvSelfID ; 
 int OHCI1394_MAX_AT_REQ_RETRIES ; 
 int OHCI1394_MAX_AT_RESP_RETRIES ; 
 int OHCI1394_MAX_PHYS_RESP_RETRIES ; 
 int /*<<< orphan*/  OHCI1394_PhyUpperBound ; 
 int OHCI1394_RQPkt ; 
 int OHCI1394_RSPkt ; 
 int /*<<< orphan*/  OHCI1394_SelfIDBuffer ; 
 int OHCI1394_busReset ; 
 int OHCI1394_cycle64Seconds ; 
 int OHCI1394_cycleInconsistent ; 
 int OHCI1394_cycleTooLong ; 
 int OHCI1394_isochRx ; 
 int OHCI1394_isochTx ; 
 int OHCI1394_masterIntEnable ; 
 int OHCI1394_postedWriteErr ; 
 int OHCI1394_regAccessFail ; 
 int OHCI1394_reqTxComplete ; 
 int OHCI1394_respTxComplete ; 
 int OHCI1394_selfIDComplete ; 
 int OHCI_PARAM_DEBUG_BUSRESETS ; 
 int PHY_CONTENDER ; 
 int PHY_LINK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int*,size_t) ; 
 struct fw_ohci* FUNC8 (struct fw_card*) ; 
 int /*<<< orphan*/  irq_handler ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  ohci_driver_name ; 
 scalar_t__ FUNC11 (struct fw_card*,int,int /*<<< orphan*/ ,int) ; 
 int param_debug ; 
 int FUNC12 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fw_ohci*) ; 
 scalar_t__ FUNC15 (struct fw_ohci*) ; 
 struct pci_dev* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct fw_card *card, u32 *config_rom, size_t length)
{
	struct fw_ohci *ohci = FUNC8(card);
	struct pci_dev *dev = FUNC16(card->device);
	u32 lps;
	int i;

	if (FUNC15(ohci)) {
		FUNC6("Failed to reset ohci card.\n");
		return -EBUSY;
	}

	/*
	 * Now enable LPS, which we need in order to start accessing
	 * most of the registers.  In fact, on some cards (ALI M5251),
	 * accessing registers in the SClk domain without LPS enabled
	 * will lock up the machine.  Wait 50msec to make sure we have
	 * full link enabled.  However, with some cards (well, at least
	 * a JMicron PCIe card), we have to try again sometimes.
	 */
	FUNC13(ohci, OHCI1394_HCControlSet,
		  OHCI1394_HCControl_LPS |
		  OHCI1394_HCControl_postedWriteEnable);
	FUNC4(ohci);

	for (lps = 0, i = 0; !lps && i < 3; i++) {
		FUNC10(50);
		lps = FUNC12(ohci, OHCI1394_HCControlSet) &
		      OHCI1394_HCControl_LPS;
	}

	if (!lps) {
		FUNC6("Failed to set Link Power Status\n");
		return -EIO;
	}

	FUNC13(ohci, OHCI1394_HCControlClear,
		  OHCI1394_HCControl_noByteSwapData);

	FUNC13(ohci, OHCI1394_SelfIDBuffer, ohci->self_id_bus);
	FUNC13(ohci, OHCI1394_LinkControlClear,
		  OHCI1394_LinkControl_rcvPhyPkt);
	FUNC13(ohci, OHCI1394_LinkControlSet,
		  OHCI1394_LinkControl_rcvSelfID |
		  OHCI1394_LinkControl_cycleTimerEnable |
		  OHCI1394_LinkControl_cycleMaster);

	FUNC13(ohci, OHCI1394_ATRetries,
		  OHCI1394_MAX_AT_REQ_RETRIES |
		  (OHCI1394_MAX_AT_RESP_RETRIES << 4) |
		  (OHCI1394_MAX_PHYS_RESP_RETRIES << 8));

	FUNC0(&ohci->ar_request_ctx);
	FUNC0(&ohci->ar_response_ctx);

	FUNC13(ohci, OHCI1394_PhyUpperBound, 0x00010000);
	FUNC13(ohci, OHCI1394_IntEventClear, ~0);
	FUNC13(ohci, OHCI1394_IntMaskClear, ~0);
	FUNC13(ohci, OHCI1394_IntMaskSet,
		  OHCI1394_selfIDComplete |
		  OHCI1394_RQPkt | OHCI1394_RSPkt |
		  OHCI1394_reqTxComplete | OHCI1394_respTxComplete |
		  OHCI1394_isochRx | OHCI1394_isochTx |
		  OHCI1394_postedWriteErr | OHCI1394_cycleTooLong |
		  OHCI1394_cycleInconsistent |
		  OHCI1394_cycle64Seconds | OHCI1394_regAccessFail |
		  OHCI1394_masterIntEnable);
	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
		FUNC13(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);

	/* Activate link_on bit and contender bit in our self ID packets.*/
	if (FUNC11(card, 4, 0,
				PHY_LINK_ACTIVE | PHY_CONTENDER) < 0)
		return -EIO;

	/*
	 * When the link is not yet enabled, the atomic config rom
	 * update mechanism described below in ohci_set_config_rom()
	 * is not active.  We have to update ConfigRomHeader and
	 * BusOptions manually, and the write to ConfigROMmap takes
	 * effect immediately.  We tie this to the enabling of the
	 * link, so we have a valid config rom before enabling - the
	 * OHCI requires that ConfigROMhdr and BusOptions have valid
	 * values before enabling.
	 *
	 * However, when the ConfigROMmap is written, some controllers
	 * always read back quadlets 0 and 2 from the config rom to
	 * the ConfigRomHeader and BusOptions registers on bus reset.
	 * They shouldn't do that in this initial case where the link
	 * isn't enabled.  This means we have to use the same
	 * workaround here, setting the bus header to 0 and then write
	 * the right values in the bus reset tasklet.
	 */

	if (config_rom) {
		ohci->next_config_rom =
			FUNC2(ohci->card.device, CONFIG_ROM_SIZE,
					   &ohci->next_config_rom_bus,
					   GFP_KERNEL);
		if (ohci->next_config_rom == NULL)
			return -ENOMEM;

		FUNC9(ohci->next_config_rom, 0, CONFIG_ROM_SIZE);
		FUNC7(ohci->next_config_rom, config_rom, length * 4);
	} else {
		/*
		 * In the suspend case, config_rom is NULL, which
		 * means that we just reuse the old config rom.
		 */
		ohci->next_config_rom = ohci->config_rom;
		ohci->next_config_rom_bus = ohci->config_rom_bus;
	}

	ohci->next_header = FUNC1(ohci->next_config_rom[0]);
	ohci->next_config_rom[0] = 0;
	FUNC13(ohci, OHCI1394_ConfigROMhdr, 0);
	FUNC13(ohci, OHCI1394_BusOptions,
		  FUNC1(ohci->next_config_rom[2]));
	FUNC13(ohci, OHCI1394_ConfigROMmap, ohci->next_config_rom_bus);

	FUNC13(ohci, OHCI1394_AsReqFilterHiSet, 0x80000000);

	if (FUNC14(dev->irq, irq_handler,
			IRQF_SHARED, ohci_driver_name, ohci)) {
		FUNC6("Failed to allocate shared interrupt %d.\n",
			 dev->irq);
		FUNC3(ohci->card.device, CONFIG_ROM_SIZE,
				  ohci->config_rom, ohci->config_rom_bus);
		return -EIO;
	}

	FUNC13(ohci, OHCI1394_HCControlSet,
		  OHCI1394_HCControl_linkEnable |
		  OHCI1394_HCControl_BIBimageValid);
	FUNC4(ohci);

	/*
	 * We are ready to go, initiate bus reset to finish the
	 * initialization.
	 */

	FUNC5(&ohci->card, 1);

	return 0;
}