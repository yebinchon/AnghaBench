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
struct ti_ohci {int dummy; } ;
struct TYPE_2__ {int context; } ;
struct ohci_iso_recv {scalar_t__ dma_mode; size_t block_dma; int /*<<< orphan*/  ContextControlSet; struct ti_ohci* ohci; TYPE_1__ task; int /*<<< orphan*/  CommandPtr; int /*<<< orphan*/  prog; int /*<<< orphan*/  ContextMatch; struct dma_cmd* block; int /*<<< orphan*/  ContextControlClear; } ;
struct hpsb_iso {int channel; struct ohci_iso_recv* hostdata; } ;
struct dma_cmd {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 scalar_t__ BUFFER_FILL_MODE ; 
 int /*<<< orphan*/  DMA_CTL_WAIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntMaskSet ; 
 int /*<<< orphan*/  OHCI1394_IsochronousCycleTimer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct hpsb_iso *iso, int cycle, int tag_mask, int sync)
{
	struct ohci_iso_recv *recv = iso->hostdata;
	struct ti_ohci *ohci = recv->ohci;
	u32 command, contextMatch;

	FUNC5(recv->ohci, recv->ContextControlClear, 0xFFFFFFFF);
	FUNC6();

	/* always keep ISO headers */
	command = (1 << 30);

	if (recv->dma_mode == BUFFER_FILL_MODE)
		command |= (1 << 31);

	FUNC5(recv->ohci, recv->ContextControlSet, command);

	/* match on specified tags */
	contextMatch = tag_mask << 28;

	if (iso->channel == -1) {
		/* enable multichannel reception */
		FUNC5(recv->ohci, recv->ContextControlSet, (1 << 28));
	} else {
		/* listen on channel */
		contextMatch |= iso->channel;
	}

	if (cycle != -1) {
		u32 seconds;

		/* enable cycleMatch */
		FUNC5(recv->ohci, recv->ContextControlSet, (1 << 29));

		/* set starting cycle */
		cycle &= 0x1FFF;

		/* 'cycle' is only mod 8000, but we also need two 'seconds' bits -
		   just snarf them from the current time */
		seconds = FUNC4(recv->ohci, OHCI1394_IsochronousCycleTimer) >> 25;

		/* advance one second to give some extra time for DMA to start */
		seconds += 1;

		cycle |= (seconds & 3) << 13;

		contextMatch |= cycle << 12;
	}

	if (sync != -1) {
		/* set sync flag on first DMA descriptor */
		struct dma_cmd *cmd = &recv->block[recv->block_dma];
		cmd->control |= FUNC1(DMA_CTL_WAIT);

		/* match sync field */
		contextMatch |= (sync&0xf)<<8;
	}

	FUNC5(recv->ohci, recv->ContextMatch, contextMatch);

	/* address of first descriptor block */
	command = FUNC2(&recv->prog,
						recv->block_dma * sizeof(struct dma_cmd));
	command |= 1; /* Z=1 */

	FUNC5(recv->ohci, recv->CommandPtr, command);

	/* enable interrupts */
	FUNC5(recv->ohci, OHCI1394_IsoRecvIntMaskSet, 1 << recv->task.context);

	FUNC6();

	/* run */
	FUNC5(recv->ohci, recv->ContextControlSet, 0x8000);

	/* issue a dummy read of the cycle timer register to force
	   all PCI writes to be posted immediately */
	FUNC3();
	FUNC4(recv->ohci, OHCI1394_IsochronousCycleTimer);

	/* check RUN */
	if (!(FUNC4(recv->ohci, recv->ContextControlSet) & 0x8000)) {
		FUNC0(KERN_ERR,
		      "Error starting IR DMA (ContextControl 0x%08x)\n",
		      FUNC4(recv->ohci, recv->ContextControlSet));
		return -1;
	}

	return 0;
}