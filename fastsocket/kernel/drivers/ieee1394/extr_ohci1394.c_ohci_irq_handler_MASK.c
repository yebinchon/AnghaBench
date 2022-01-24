#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct dma_rcv_ctx {int /*<<< orphan*/  task; int /*<<< orphan*/  ctrlClear; scalar_t__ ctrlSet; } ;
struct dma_trm_ctx {int /*<<< orphan*/  task; int /*<<< orphan*/  ctrlClear; scalar_t__ ctrlSet; } ;
struct ti_ohci {int nb_iso_xmit_ctx; int nb_iso_rcv_ctx; int /*<<< orphan*/  event_lock; struct dma_rcv_ctx ar_resp_context; struct dma_rcv_ctx ar_req_context; struct dma_trm_ctx at_resp_context; struct dma_trm_ctx at_req_context; struct hpsb_host* host; scalar_t__ check_busreset; } ;
struct hpsb_host {scalar_t__ in_bus_reset; } ;
typedef  int quadlet_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LONG_RESET ; 
 scalar_t__ OHCI1394_AsReqRcvCommandPtr ; 
 scalar_t__ OHCI1394_AsReqRcvContextControlSet ; 
 scalar_t__ OHCI1394_AsReqTrCommandPtr ; 
 scalar_t__ OHCI1394_AsReqTrContextControlSet ; 
 scalar_t__ OHCI1394_AsRspRcvCommandPtr ; 
 scalar_t__ OHCI1394_AsRspRcvContextControlSet ; 
 scalar_t__ OHCI1394_AsRspTrCommandPtr ; 
 scalar_t__ OHCI1394_AsRspTrContextControlSet ; 
 scalar_t__ OHCI1394_IntEventClear ; 
 scalar_t__ OHCI1394_IntEventSet ; 
 scalar_t__ OHCI1394_IntMaskClear ; 
 scalar_t__ OHCI1394_IntMaskSet ; 
 scalar_t__ OHCI1394_IsoRcvCommandPtr ; 
 scalar_t__ OHCI1394_IsoRcvContextControlSet ; 
 scalar_t__ OHCI1394_IsoRcvContextMatch ; 
 scalar_t__ OHCI1394_IsoRecvIntEventClear ; 
 scalar_t__ OHCI1394_IsoRecvIntEventSet ; 
 scalar_t__ OHCI1394_IsoXmitCommandPtr ; 
 scalar_t__ OHCI1394_IsoXmitContextControlSet ; 
 scalar_t__ OHCI1394_IsoXmitIntEventClear ; 
 scalar_t__ OHCI1394_IsoXmitIntEventSet ; 
 scalar_t__ OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_CycleMaster ; 
 scalar_t__ OHCI1394_NodeID ; 
 scalar_t__ OHCI1394_PhyReqFilterHiSet ; 
 scalar_t__ OHCI1394_PhyReqFilterLoSet ; 
 int OHCI1394_RQPkt ; 
 int OHCI1394_RSPkt ; 
 int OHCI1394_busReset ; 
 int OHCI1394_cycleInconsistent ; 
 int OHCI1394_cycleTooLong ; 
 int OHCI1394_isochRx ; 
 int OHCI1394_isochTx ; 
 int OHCI1394_postedWriteErr ; 
 int OHCI1394_reqTxComplete ; 
 int OHCI1394_respTxComplete ; 
 int OHCI1394_selfIDComplete ; 
 int OHCI1394_unrecoverableError ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  RESET_BUS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_ohci*,struct hpsb_host*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_host*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_ohci*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_ohci*,int,int) ; 
 scalar_t__ phys_dma ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (struct ti_ohci*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ti_ohci*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *dev_id)
{
	quadlet_t event, node_id;
	struct ti_ohci *ohci = (struct ti_ohci *)dev_id;
	struct hpsb_host *host = ohci->host;
	int phyid = -1, isroot = 0;
	unsigned long flags;

	/* Read and clear the interrupt event register.  Don't clear
	 * the busReset event, though. This is done when we get the
	 * selfIDComplete interrupt. */
	FUNC12(&ohci->event_lock, flags);
	event = FUNC10(ohci, OHCI1394_IntEventClear);
	FUNC11(ohci, OHCI1394_IntEventClear, event & ~OHCI1394_busReset);
	FUNC13(&ohci->event_lock, flags);

	if (!event)
		return IRQ_NONE;

	/* If event is ~(u32)0 cardbus card was ejected.  In this case
	 * we just return, and clean up in the ohci1394_pci_remove
	 * function. */
	if (event == ~(u32) 0) {
		FUNC0("Device removed.");
		return IRQ_NONE;
	}

	FUNC0("IntEvent: %08x", event);

	if (event & OHCI1394_unrecoverableError) {
		int ctx;
		FUNC1(KERN_ERR, "Unrecoverable error!");

		if (FUNC10(ohci, OHCI1394_AsReqTrContextControlSet) & 0x800)
			FUNC1(KERN_ERR, "Async Req Tx Context died: "
				"ctrl[%08x] cmdptr[%08x]",
				FUNC10(ohci, OHCI1394_AsReqTrContextControlSet),
				FUNC10(ohci, OHCI1394_AsReqTrCommandPtr));

		if (FUNC10(ohci, OHCI1394_AsRspTrContextControlSet) & 0x800)
			FUNC1(KERN_ERR, "Async Rsp Tx Context died: "
				"ctrl[%08x] cmdptr[%08x]",
				FUNC10(ohci, OHCI1394_AsRspTrContextControlSet),
				FUNC10(ohci, OHCI1394_AsRspTrCommandPtr));

		if (FUNC10(ohci, OHCI1394_AsReqRcvContextControlSet) & 0x800)
			FUNC1(KERN_ERR, "Async Req Rcv Context died: "
				"ctrl[%08x] cmdptr[%08x]",
				FUNC10(ohci, OHCI1394_AsReqRcvContextControlSet),
				FUNC10(ohci, OHCI1394_AsReqRcvCommandPtr));

		if (FUNC10(ohci, OHCI1394_AsRspRcvContextControlSet) & 0x800)
			FUNC1(KERN_ERR, "Async Rsp Rcv Context died: "
				"ctrl[%08x] cmdptr[%08x]",
				FUNC10(ohci, OHCI1394_AsRspRcvContextControlSet),
				FUNC10(ohci, OHCI1394_AsRspRcvCommandPtr));

		for (ctx = 0; ctx < ohci->nb_iso_xmit_ctx; ctx++) {
			if (FUNC10(ohci, OHCI1394_IsoXmitContextControlSet + (16 * ctx)) & 0x800)
				FUNC1(KERN_ERR, "Iso Xmit %d Context died: "
					"ctrl[%08x] cmdptr[%08x]", ctx,
					FUNC10(ohci, OHCI1394_IsoXmitContextControlSet + (16 * ctx)),
					FUNC10(ohci, OHCI1394_IsoXmitCommandPtr + (16 * ctx)));
		}

		for (ctx = 0; ctx < ohci->nb_iso_rcv_ctx; ctx++) {
			if (FUNC10(ohci, OHCI1394_IsoRcvContextControlSet + (32 * ctx)) & 0x800)
				FUNC1(KERN_ERR, "Iso Recv %d Context died: "
					"ctrl[%08x] cmdptr[%08x] match[%08x]", ctx,
					FUNC10(ohci, OHCI1394_IsoRcvContextControlSet + (32 * ctx)),
					FUNC10(ohci, OHCI1394_IsoRcvCommandPtr + (32 * ctx)),
					FUNC10(ohci, OHCI1394_IsoRcvContextMatch + (32 * ctx)));
		}

		event &= ~OHCI1394_unrecoverableError;
	}
	if (event & OHCI1394_postedWriteErr) {
		FUNC1(KERN_ERR, "physical posted write error");
		/* no recovery strategy yet, had to involve protocol drivers */
		event &= ~OHCI1394_postedWriteErr;
	}
	if (event & OHCI1394_cycleTooLong) {
		if(FUNC9())
			FUNC1(KERN_WARNING, "isochronous cycle too long");
		else
			FUNC0("OHCI1394_cycleTooLong");
		FUNC11(ohci, OHCI1394_LinkControlSet,
			  OHCI1394_LinkControl_CycleMaster);
		event &= ~OHCI1394_cycleTooLong;
	}
	if (event & OHCI1394_cycleInconsistent) {
		/* We subscribe to the cycleInconsistent event only to
		 * clear the corresponding event bit... otherwise,
		 * isochronous cycleMatch DMA won't work. */
		FUNC0("OHCI1394_cycleInconsistent");
		event &= ~OHCI1394_cycleInconsistent;
	}
	if (event & OHCI1394_busReset) {
		/* The busReset event bit can't be cleared during the
		 * selfID phase, so we disable busReset interrupts, to
		 * avoid burying the cpu in interrupt requests. */
		FUNC12(&ohci->event_lock, flags);
		FUNC11(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);

		if (ohci->check_busreset) {
			int loop_count = 0;

			FUNC15(10);

			while (FUNC10(ohci, OHCI1394_IntEventSet) & OHCI1394_busReset) {
				FUNC11(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);

				FUNC13(&ohci->event_lock, flags);
				FUNC15(10);
				FUNC12(&ohci->event_lock, flags);

				/* The loop counter check is to prevent the driver
				 * from remaining in this state forever. For the
				 * initial bus reset, the loop continues for ever
				 * and the system hangs, until some device is plugged-in
				 * or out manually into a port! The forced reset seems
				 * to solve this problem. This mainly effects nForce2. */
				if (loop_count > 10000) {
					FUNC7(host, RESET_BUS, LONG_RESET);
					FUNC0("Detected bus-reset loop. Forced a bus reset!");
					loop_count = 0;
				}

				loop_count++;
			}
		}
		FUNC13(&ohci->event_lock, flags);
		if (!host->in_bus_reset) {
			FUNC0("irq_handler: Bus reset requested");

			/* Subsystem call */
			FUNC4(ohci->host);
		}
		event &= ~OHCI1394_busReset;
	}
	if (event & OHCI1394_reqTxComplete) {
		struct dma_trm_ctx *d = &ohci->at_req_context;
		FUNC0("Got reqTxComplete interrupt "
		       "status=0x%08X", FUNC10(ohci, d->ctrlSet));
		if (FUNC10(ohci, d->ctrlSet) & 0x800)
			FUNC6(ohci, d->ctrlClear,
					      "reqTxComplete");
		else
			FUNC2((unsigned long)d);
			//tasklet_schedule(&d->task);
		event &= ~OHCI1394_reqTxComplete;
	}
	if (event & OHCI1394_respTxComplete) {
		struct dma_trm_ctx *d = &ohci->at_resp_context;
		FUNC0("Got respTxComplete interrupt "
		       "status=0x%08X", FUNC10(ohci, d->ctrlSet));
		if (FUNC10(ohci, d->ctrlSet) & 0x800)
			FUNC6(ohci, d->ctrlClear,
					      "respTxComplete");
		else
			FUNC14(&d->task);
		event &= ~OHCI1394_respTxComplete;
	}
	if (event & OHCI1394_RQPkt) {
		struct dma_rcv_ctx *d = &ohci->ar_req_context;
		FUNC0("Got RQPkt interrupt status=0x%08X",
		       FUNC10(ohci, d->ctrlSet));
		if (FUNC10(ohci, d->ctrlSet) & 0x800)
			FUNC6(ohci, d->ctrlClear, "RQPkt");
		else
			FUNC14(&d->task);
		event &= ~OHCI1394_RQPkt;
	}
	if (event & OHCI1394_RSPkt) {
		struct dma_rcv_ctx *d = &ohci->ar_resp_context;
		FUNC0("Got RSPkt interrupt status=0x%08X",
		       FUNC10(ohci, d->ctrlSet));
		if (FUNC10(ohci, d->ctrlSet) & 0x800)
			FUNC6(ohci, d->ctrlClear, "RSPkt");
		else
			FUNC14(&d->task);
		event &= ~OHCI1394_RSPkt;
	}
	if (event & OHCI1394_isochRx) {
		quadlet_t rx_event;

		rx_event = FUNC10(ohci, OHCI1394_IsoRecvIntEventSet);
		FUNC11(ohci, OHCI1394_IsoRecvIntEventClear, rx_event);
		FUNC8(ohci, rx_event, 0);
		event &= ~OHCI1394_isochRx;
	}
	if (event & OHCI1394_isochTx) {
		quadlet_t tx_event;

		tx_event = FUNC10(ohci, OHCI1394_IsoXmitIntEventSet);
		FUNC11(ohci, OHCI1394_IsoXmitIntEventClear, tx_event);
		FUNC8(ohci, 0, tx_event);
		event &= ~OHCI1394_isochTx;
	}
	if (event & OHCI1394_selfIDComplete) {
		if (host->in_bus_reset) {
			node_id = FUNC10(ohci, OHCI1394_NodeID);

			if (!(node_id & 0x80000000)) {
				FUNC1(KERN_ERR,
				      "SelfID received, but NodeID invalid "
				      "(probably new bus reset occurred): %08X",
				      node_id);
				goto selfid_not_valid;
			}

			phyid =  node_id & 0x0000003f;
			isroot = (node_id & 0x40000000) != 0;

			FUNC0("SelfID interrupt received "
			      "(phyid %d, %s)", phyid,
			      (isroot ? "root" : "not root"));

			FUNC3(ohci, host, phyid, isroot);

			/* Clear the bus reset event and re-enable the
			 * busReset interrupt.  */
			FUNC12(&ohci->event_lock, flags);
			FUNC11(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
			FUNC11(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
			FUNC13(&ohci->event_lock, flags);

			/* Turn on phys dma reception.
			 *
			 * TODO: Enable some sort of filtering management.
			 */
			if (phys_dma) {
				FUNC11(ohci, OHCI1394_PhyReqFilterHiSet,
					  0xffffffff);
				FUNC11(ohci, OHCI1394_PhyReqFilterLoSet,
					  0xffffffff);
			}

			FUNC0("PhyReqFilter=%08x%08x",
			       FUNC10(ohci, OHCI1394_PhyReqFilterHiSet),
			       FUNC10(ohci, OHCI1394_PhyReqFilterLoSet));

			FUNC5(host, phyid, isroot);
		} else
			FUNC1(KERN_ERR,
			      "SelfID received outside of bus reset sequence");

selfid_not_valid:
		event &= ~OHCI1394_selfIDComplete;
	}

	/* Make sure we handle everything, just in case we accidentally
	 * enabled an interrupt that we didn't write a handler for.  */
	if (event)
		FUNC1(KERN_ERR, "Unhandled interrupt(s) 0x%08x",
		      event);

	return IRQ_HANDLED;
}