#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int BaseAddress; int trans_method; int clock; } ;
typedef  TYPE_1__ nsp32_hw_data ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_WIDTH ; 
 unsigned long AUTOSEL_TIMING_SEL ; 
 unsigned long BMREQ_NEGATE_TIMING_SEL ; 
 unsigned long BMSTOP_CHANGE2_NONDATA_PHASE ; 
 int /*<<< orphan*/  BM_CNT ; 
 int /*<<< orphan*/  BM_CYCLE ; 
 int BPWR ; 
 int /*<<< orphan*/  CFG_LATE_CACHE ; 
 int /*<<< orphan*/  CLOCK_DIV ; 
 unsigned long DELAYED_BMSTART ; 
 int /*<<< orphan*/  EXT_PORT ; 
 int /*<<< orphan*/  EXT_PORT_DDR ; 
 int /*<<< orphan*/  FIFO_EMPTY_SHLD_COUNT ; 
 int /*<<< orphan*/  FIFO_FULL_SHLD_COUNT ; 
 unsigned long IRQSELECT_AUTO_SCSI_SEQ_IRQ ; 
 unsigned long IRQSELECT_FIFO_SHLD_IRQ ; 
 unsigned long IRQSELECT_MASTER_ABORT_IRQ ; 
 unsigned long IRQSELECT_PHASE_CHANGE_IRQ ; 
 unsigned long IRQSELECT_RESELECT_IRQ ; 
 unsigned long IRQSELECT_SCSIRESET_IRQ ; 
 unsigned long IRQSELECT_TARGET_ABORT_IRQ ; 
 unsigned long IRQSELECT_TIMER_IRQ ; 
 unsigned short IRQSTATUS_ANY_IRQ ; 
 int /*<<< orphan*/  IRQ_CONTROL ; 
 int /*<<< orphan*/  IRQ_CONTROL_ALL_IRQ_MASK ; 
 int /*<<< orphan*/  IRQ_SELECT ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int LED_OFF ; 
 unsigned long MASTER_TERMINATION_SELECT ; 
 int MEMRD_CMD1 ; 
 int /*<<< orphan*/  MISC_WR ; 
 int /*<<< orphan*/  NSP32_DEBUG_INIT ; 
 int NSP32_TRANSFER_BUSMASTER ; 
 int NSP32_TRANSFER_MMIO ; 
 int NSP32_TRANSFER_PIO ; 
 int /*<<< orphan*/  PARITY_CONTROL ; 
 unsigned long SCSI_DIRECTION_DETECTOR_SELECT ; 
 int /*<<< orphan*/  SCSI_EXECUTE_PHASE ; 
 int /*<<< orphan*/  SEL_TIMEOUT_TIME ; 
 int /*<<< orphan*/  SEL_TIME_OUT ; 
 unsigned char SENSE ; 
 int SGT_AUTO_PARA_MEMED_CMD ; 
 int /*<<< orphan*/  SYNC_REG ; 
 int /*<<< orphan*/  TERM_PWR_CONTROL ; 
 int /*<<< orphan*/  TIMER_SET ; 
 int /*<<< orphan*/  TIMER_STOP ; 
 int /*<<< orphan*/  TRANSFER_CONTROL ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned short FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(nsp32_hw_data *data)
{
	unsigned int   base = data->BaseAddress;
	unsigned short irq_stat;
	unsigned long  lc_reg;
	unsigned char  power;

	lc_reg = FUNC2(base, CFG_LATE_CACHE);
	if ((lc_reg & 0xff00) == 0) {
		lc_reg |= (0x20 << 8);
		FUNC4(base, CFG_LATE_CACHE, lc_reg & 0xffff);
	}

	FUNC8(base, IRQ_CONTROL,        IRQ_CONTROL_ALL_IRQ_MASK);
	FUNC8(base, TRANSFER_CONTROL,   0);
	FUNC9(base, BM_CNT,             0);
	FUNC8(base, SCSI_EXECUTE_PHASE, 0);

	do {
		irq_stat = FUNC6(base, IRQ_STATUS);
		FUNC0(NSP32_DEBUG_INIT, "irq_stat 0x%x", irq_stat);
	} while (irq_stat & IRQSTATUS_ANY_IRQ);

	/*
	 * Fill FIFO_FULL_SHLD, FIFO_EMPTY_SHLD. Below parameter is
	 *  designated by specification.
	 */
	if ((data->trans_method & NSP32_TRANSFER_PIO) ||
	    (data->trans_method & NSP32_TRANSFER_MMIO)) {
		FUNC3(base, FIFO_FULL_SHLD_COUNT,  0x40);
		FUNC3(base, FIFO_EMPTY_SHLD_COUNT, 0x40);
	} else if (data->trans_method & NSP32_TRANSFER_BUSMASTER) {
		FUNC3(base, FIFO_FULL_SHLD_COUNT,  0x10);
		FUNC3(base, FIFO_EMPTY_SHLD_COUNT, 0x60);
	} else {
		FUNC0(NSP32_DEBUG_INIT, "unknown transfer mode");
	}

	FUNC0(NSP32_DEBUG_INIT, "full 0x%x emp 0x%x",
		  FUNC1(base, FIFO_FULL_SHLD_COUNT),
		  FUNC1(base, FIFO_EMPTY_SHLD_COUNT));

	FUNC3(base, CLOCK_DIV, data->clock);
	FUNC3(base, BM_CYCLE,  MEMRD_CMD1 | SGT_AUTO_PARA_MEMED_CMD);
	FUNC7(base, PARITY_CONTROL, 0);	/* parity check is disable */

	/*
	 * initialize MISC_WRRD register
	 * 
	 * Note: Designated parameters is obeyed as following:
	 *	MISC_SCSI_DIRECTION_DETECTOR_SELECT: It must be set.
	 *	MISC_MASTER_TERMINATION_SELECT:      It must be set.
	 *	MISC_BMREQ_NEGATE_TIMING_SEL:	     It should be set.
	 *	MISC_AUTOSEL_TIMING_SEL:	     It should be set.
	 *	MISC_BMSTOP_CHANGE2_NONDATA_PHASE:   It should be set.
	 *	MISC_DELAYED_BMSTART:		     It's selected for safety.
	 *
	 * Note: If MISC_BMSTOP_CHANGE2_NONDATA_PHASE is set, then
	 *	we have to set TRANSFERCONTROL_BM_START as 0 and set
	 *	appropriate value before restarting bus master transfer.
	 */
	FUNC4(base, MISC_WR,
			   (SCSI_DIRECTION_DETECTOR_SELECT |
			    DELAYED_BMSTART                |
			    MASTER_TERMINATION_SELECT      |
			    BMREQ_NEGATE_TIMING_SEL        |
			    AUTOSEL_TIMING_SEL             |
			    BMSTOP_CHANGE2_NONDATA_PHASE));

	FUNC3(base, TERM_PWR_CONTROL, 0);
	power = FUNC1(base, TERM_PWR_CONTROL);
	if (!(power & SENSE)) {
		FUNC5(KERN_INFO, "term power on");
		FUNC3(base, TERM_PWR_CONTROL, BPWR);
	}

	FUNC8(base, TIMER_SET, TIMER_STOP);
	FUNC8(base, TIMER_SET, TIMER_STOP); /* Required 2 times */

	FUNC7(base, SYNC_REG,     0);
	FUNC7(base, ACK_WIDTH,    0);
	FUNC8(base, SEL_TIME_OUT, SEL_TIMEOUT_TIME);

	/*
	 * enable to select designated IRQ (except for
	 * IRQSELECT_SERR, IRQSELECT_PERR, IRQSELECT_BMCNTERR)
	 */
	FUNC4(base, IRQ_SELECT, IRQSELECT_TIMER_IRQ         |
			                     IRQSELECT_SCSIRESET_IRQ     |
			                     IRQSELECT_FIFO_SHLD_IRQ     |
			                     IRQSELECT_RESELECT_IRQ      |
			                     IRQSELECT_PHASE_CHANGE_IRQ  |
			                     IRQSELECT_AUTO_SCSI_SEQ_IRQ |
			                  //   IRQSELECT_BMCNTERR_IRQ      |
			                     IRQSELECT_TARGET_ABORT_IRQ  |
			                     IRQSELECT_MASTER_ABORT_IRQ );
	FUNC8(base, IRQ_CONTROL, 0);

	/* PCI LED off */
	FUNC3(base, EXT_PORT_DDR, LED_OFF);
	FUNC3(base, EXT_PORT,     LED_OFF);

	return TRUE;
}