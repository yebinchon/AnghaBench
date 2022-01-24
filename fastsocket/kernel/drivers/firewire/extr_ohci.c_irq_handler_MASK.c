#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_11__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_10__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_9__ {int /*<<< orphan*/  tasklet; } ;
struct fw_ohci {int /*<<< orphan*/  bus_seconds; TYPE_8__* it_context_list; TYPE_6__* ir_context_list; TYPE_4__ at_response_ctx; TYPE_3__ at_request_ctx; TYPE_2__ ar_response_ctx; TYPE_1__ ar_request_ctx; int /*<<< orphan*/  bus_reset_tasklet; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_15__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_16__ {TYPE_7__ context; } ;
struct TYPE_13__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_14__ {TYPE_5__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  OHCI1394_IntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsochronousCycleTimer ; 
 int /*<<< orphan*/  OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_cycleMaster ; 
 int OHCI1394_RQPkt ; 
 int OHCI1394_RSPkt ; 
 int OHCI1394_busReset ; 
 int OHCI1394_cycle64Seconds ; 
 int OHCI1394_cycleInconsistent ; 
 int OHCI1394_cycleTooLong ; 
 int OHCI1394_postedWriteErr ; 
 int OHCI1394_regAccessFail ; 
 int OHCI1394_reqTxComplete ; 
 int OHCI1394_respTxComplete ; 
 int OHCI1394_selfIDComplete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct fw_ohci *ohci = data;
	u32 event, iso_event, cycle_time;
	int i;

	event = FUNC6(ohci, OHCI1394_IntEventClear);

	if (!event || !~event)
		return IRQ_NONE;

	/* busReset must not be cleared yet, see OHCI 1.1 clause 7.2.3.2 */
	FUNC7(ohci, OHCI1394_IntEventClear, event & ~OHCI1394_busReset);
	FUNC4(event);

	if (event & OHCI1394_selfIDComplete)
		FUNC8(&ohci->bus_reset_tasklet);

	if (event & OHCI1394_RQPkt)
		FUNC8(&ohci->ar_request_ctx.tasklet);

	if (event & OHCI1394_RSPkt)
		FUNC8(&ohci->ar_response_ctx.tasklet);

	if (event & OHCI1394_reqTxComplete)
		FUNC8(&ohci->at_request_ctx.tasklet);

	if (event & OHCI1394_respTxComplete)
		FUNC8(&ohci->at_response_ctx.tasklet);

	iso_event = FUNC6(ohci, OHCI1394_IsoRecvIntEventClear);
	FUNC7(ohci, OHCI1394_IsoRecvIntEventClear, iso_event);

	while (iso_event) {
		i = FUNC1(iso_event) - 1;
		FUNC8(&ohci->ir_context_list[i].context.tasklet);
		iso_event &= ~(1 << i);
	}

	iso_event = FUNC6(ohci, OHCI1394_IsoXmitIntEventClear);
	FUNC7(ohci, OHCI1394_IsoXmitIntEventClear, iso_event);

	while (iso_event) {
		i = FUNC1(iso_event) - 1;
		FUNC8(&ohci->it_context_list[i].context.tasklet);
		iso_event &= ~(1 << i);
	}

	if (FUNC9(event & OHCI1394_regAccessFail))
		FUNC2("Register access failure - "
			 "please notify linux1394-devel@lists.sf.net\n");

	if (FUNC9(event & OHCI1394_postedWriteErr))
		FUNC2("PCI posted write error\n");

	if (FUNC9(event & OHCI1394_cycleTooLong)) {
		if (FUNC5())
			FUNC3("isochronous cycle too long\n");
		FUNC7(ohci, OHCI1394_LinkControlSet,
			  OHCI1394_LinkControl_cycleMaster);
	}

	if (FUNC9(event & OHCI1394_cycleInconsistent)) {
		/*
		 * We need to clear this event bit in order to make
		 * cycleMatch isochronous I/O work.  In theory we should
		 * stop active cycleMatch iso contexts now and restart
		 * them at least two cycles later.  (FIXME?)
		 */
		if (FUNC5())
			FUNC3("isochronous cycle inconsistent\n");
	}

	if (event & OHCI1394_cycle64Seconds) {
		cycle_time = FUNC6(ohci, OHCI1394_IsochronousCycleTimer);
		if ((cycle_time & 0x80000000) == 0)
			FUNC0(&ohci->bus_seconds);
	}

	return IRQ_HANDLED;
}