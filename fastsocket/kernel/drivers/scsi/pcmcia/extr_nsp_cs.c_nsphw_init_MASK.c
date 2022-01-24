#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int BaseAddress; int ScsiClockDiv; int TransferMode; scalar_t__ FifoCount; int /*<<< orphan*/ * CurrentSC; } ;
typedef  TYPE_1__ nsp_hw_data ;

/* Variables and functions */
 int /*<<< orphan*/  ACKWIDTH ; 
 int ACK_COUNTER_CLEAR ; 
 int /*<<< orphan*/  CLOCKDIV ; 
 int CLOCK_40M ; 
 int /*<<< orphan*/  FALSE ; 
 int FAST_20 ; 
 int HOST_COUNTER_CLEAR ; 
 int /*<<< orphan*/  IFSELECT ; 
 int /*<<< orphan*/  IF_IFSEL ; 
 int /*<<< orphan*/  IF_REGSEL ; 
 int /*<<< orphan*/  IRQCONTROL ; 
 int /*<<< orphan*/  IRQCONTROL_ALLCLEAR ; 
 int /*<<< orphan*/  IRQCONTROL_ALLMASK ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MODE_IO8 ; 
 int /*<<< orphan*/  NSP_DEBUG_INIT ; 
 int /*<<< orphan*/  OTHERCONTROL ; 
 int /*<<< orphan*/  PARITYCTRL ; 
 int /*<<< orphan*/  POINTERCLR ; 
 int POINTER_CLEAR ; 
 int POWER_ON ; 
 int REQ_COUNTER_CLEAR ; 
 int RESELECT_EI ; 
 int /*<<< orphan*/  SCSIIRQMODE ; 
 int SCSI_PHASE_CHANGE_EI ; 
 int SCSI_RESET_IRQ_EI ; 
 int /*<<< orphan*/  SYNCREG ; 
 int /*<<< orphan*/  TERMPWRCTRL ; 
 int /*<<< orphan*/  TIMERCOUNT ; 
 int TPWR_SENSE ; 
 int /*<<< orphan*/  TRANSFERMODE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(nsp_hw_data *data)
{
	unsigned int base     = data->BaseAddress;

	FUNC0(NSP_DEBUG_INIT, "in base=0x%x", base);

	data->ScsiClockDiv = CLOCK_40M | FAST_20;
	data->CurrentSC    = NULL;
	data->FifoCount    = 0;
	data->TransferMode = MODE_IO8;

	FUNC6(data);

	/* block all interrupts */
	FUNC5(base,	      IRQCONTROL,   IRQCONTROL_ALLMASK);

	/* setup SCSI interface */
	FUNC5(base,	      IFSELECT,	    IF_IFSEL);

	FUNC2(base, SCSIIRQMODE,  0);

	FUNC2(base, TRANSFERMODE, MODE_IO8);
	FUNC2(base, CLOCKDIV,	    data->ScsiClockDiv);

	FUNC2(base, PARITYCTRL,   0);
	FUNC2(base, POINTERCLR,   POINTER_CLEAR     |
					    ACK_COUNTER_CLEAR |
					    REQ_COUNTER_CLEAR |
					    HOST_COUNTER_CLEAR);

	/* setup fifo asic */
	FUNC5(base,	      IFSELECT,	    IF_REGSEL);
	FUNC2(base, TERMPWRCTRL,  0);
	if ((FUNC1(base, OTHERCONTROL) & TPWR_SENSE) == 0) {
		FUNC3(KERN_INFO, "terminator power on");
		FUNC2(base, TERMPWRCTRL, POWER_ON);
	}

	FUNC2(base, TIMERCOUNT,   0);
	FUNC2(base, TIMERCOUNT,   0); /* requires 2 times!! */

	FUNC2(base, SYNCREG,	    0);
	FUNC2(base, ACKWIDTH,	    0);

	/* enable interrupts and ack them */
	FUNC2(base, SCSIIRQMODE,  SCSI_PHASE_CHANGE_EI |
					    RESELECT_EI		 |
					    SCSI_RESET_IRQ_EI	 );
	FUNC5(base,	      IRQCONTROL,   IRQCONTROL_ALLCLEAR);

	FUNC4(data, FALSE);

	return TRUE;
}