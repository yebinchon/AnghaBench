#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ipath_devdata {scalar_t__ ipath_int_counter; int ipath_flags; int ipath_i_bitsextant; scalar_t__ ipath_gpio_mask; unsigned long long ipath_i_rcvavail_shift; unsigned long long ipath_i_rcvurg_shift; int ipath_i_rcvavail_mask; int ipath_i_rcvurg_mask; int ipath_sendctrl; int /*<<< orphan*/  ipath_sendctrl_lock; TYPE_2__* ipath_kregs; int /*<<< orphan*/ * ipath_pd; int /*<<< orphan*/  ipath_lli_errs; int /*<<< orphan*/  ipath_overrun_thresh_errs; int /*<<< orphan*/  ipath_rxfc_unsupvl_errs; TYPE_1__* pcidev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  long long ipath_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  sps_errints; int /*<<< orphan*/  sps_nullintr; int /*<<< orphan*/  sps_ints; } ;
struct TYPE_5__ {int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_sendctrl; int /*<<< orphan*/  kr_intclear; int /*<<< orphan*/  kr_gpio_clear; int /*<<< orphan*/  kr_gpio_mask; int /*<<< orphan*/  kr_gpio_status; int /*<<< orphan*/  kr_errorstatus; int /*<<< orphan*/  kr_intstatus; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INFINIPATH_I_ERROR ; 
 int INFINIPATH_I_GPIO ; 
 int INFINIPATH_I_SDMADISABLED ; 
 int INFINIPATH_I_SDMAINT ; 
 int INFINIPATH_I_SPIOBUFAVAIL ; 
 int INFINIPATH_S_PIOINTBUFAVAIL ; 
 int IPATH_GPIO_ERRINTRS ; 
 scalar_t__ IPATH_GPIO_ERRINTR_MASK ; 
 int IPATH_GPIO_INTR ; 
 int IPATH_GPIO_LLI_BIT ; 
 int IPATH_GPIO_OVRUN_BIT ; 
 int IPATH_GPIO_PORT0_BIT ; 
 int IPATH_GPIO_RXUVL_BIT ; 
 int IPATH_INITTED ; 
 int IPATH_PRESENT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 int FUNC1 (struct ipath_devdata*,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ipath_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 long long FUNC13 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 TYPE_3__ ipath_stats ; 
 int /*<<< orphan*/  FUNC14 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 

irqreturn_t FUNC18(int irq, void *data)
{
	struct ipath_devdata *dd = data;
	u64 istat, chk0rcv = 0;
	ipath_err_t estat = 0;
	irqreturn_t ret;
	static unsigned unexpected = 0;
	u64 kportrbits;

	ipath_stats.sps_ints++;

	if (dd->ipath_int_counter != (u32) -1)
		dd->ipath_int_counter++;

	if (!(dd->ipath_flags & IPATH_PRESENT)) {
		/*
		 * This return value is not great, but we do not want the
		 * interrupt core code to remove our interrupt handler
		 * because we don't appear to be handling an interrupt
		 * during a chip reset.
		 */
		return IRQ_HANDLED;
	}

	/*
	 * this needs to be flags&initted, not statusp, so we keep
	 * taking interrupts even after link goes down, etc.
	 * Also, we *must* clear the interrupt at some point, or we won't
	 * take it again, which can be real bad for errors, etc...
	 */

	if (!(dd->ipath_flags & IPATH_INITTED)) {
		FUNC5(dd, &unexpected);
		ret = IRQ_NONE;
		goto bail;
	}

	istat = FUNC11(dd, dd->ipath_kregs->kr_intstatus);

	if (FUNC17(!istat)) {
		ipath_stats.sps_nullintr++;
		ret = IRQ_NONE; /* not our interrupt, or already handled */
		goto bail;
	}
	if (FUNC17(istat == -1)) {
		FUNC6(dd);
		/* don't know if it was our interrupt or not */
		ret = IRQ_NONE;
		goto bail;
	}

	if (unexpected)
		unexpected = 0;

	if (FUNC17(istat & ~dd->ipath_i_bitsextant))
		FUNC9(dd,
			      "interrupt with unknown interrupts %Lx set\n",
			      (unsigned long long)
			      istat & ~dd->ipath_i_bitsextant);
	else if (istat & ~INFINIPATH_I_ERROR) /* errors do own printing */
		FUNC7(VERBOSE, "intr stat=0x%Lx\n",
			(unsigned long long) istat);

	if (istat & INFINIPATH_I_ERROR) {
		ipath_stats.sps_errints++;
		estat = FUNC13(dd,
					  dd->ipath_kregs->kr_errorstatus);
		if (!estat)
			FUNC0(&dd->pcidev->dev, "error interrupt (%Lx), "
				 "but no error bits set!\n",
				 (unsigned long long) istat);
		else if (estat == -1LL)
			/*
			 * should we try clearing all, or hope next read
			 * works?
			 */
			FUNC9(dd, "Read of error status failed "
				      "(all bits set); ignoring\n");
		else
			chk0rcv |= FUNC1(dd, estat);
	}

	if (istat & INFINIPATH_I_GPIO) {
		/*
		 * GPIO interrupts fall in two broad classes:
		 * GPIO_2 indicates (on some HT4xx boards) that a packet
		 *        has arrived for Port 0. Checking for this
		 *        is controlled by flag IPATH_GPIO_INTR.
		 * GPIO_3..5 on IBA6120 Rev2 and IBA6110 Rev4 chips indicate
		 *        errors that we need to count. Checking for this
		 *        is controlled by flag IPATH_GPIO_ERRINTRS.
		 */
		u32 gpiostatus;
		u32 to_clear = 0;

		gpiostatus = FUNC12(
			dd, dd->ipath_kregs->kr_gpio_status);
		/* First the error-counter case. */
		if ((gpiostatus & IPATH_GPIO_ERRINTR_MASK) &&
		    (dd->ipath_flags & IPATH_GPIO_ERRINTRS)) {
			/* want to clear the bits we see asserted. */
			to_clear |= (gpiostatus & IPATH_GPIO_ERRINTR_MASK);

			/*
			 * Count appropriately, clear bits out of our copy,
			 * as they have been "handled".
			 */
			if (gpiostatus & (1 << IPATH_GPIO_RXUVL_BIT)) {
				FUNC8("FlowCtl on UnsupVL\n");
				dd->ipath_rxfc_unsupvl_errs++;
			}
			if (gpiostatus & (1 << IPATH_GPIO_OVRUN_BIT)) {
				FUNC8("Overrun Threshold exceeded\n");
				dd->ipath_overrun_thresh_errs++;
			}
			if (gpiostatus & (1 << IPATH_GPIO_LLI_BIT)) {
				FUNC8("Local Link Integrity error\n");
				dd->ipath_lli_errs++;
			}
			gpiostatus &= ~IPATH_GPIO_ERRINTR_MASK;
		}
		/* Now the Port0 Receive case */
		if ((gpiostatus & (1 << IPATH_GPIO_PORT0_BIT)) &&
		    (dd->ipath_flags & IPATH_GPIO_INTR)) {
			/*
			 * GPIO status bit 2 is set, and we expected it.
			 * clear it and indicate in p0bits.
			 * This probably only happens if a Port0 pkt
			 * arrives at _just_ the wrong time, and we
			 * handle that by seting chk0rcv;
			 */
			to_clear |= (1 << IPATH_GPIO_PORT0_BIT);
			gpiostatus &= ~(1 << IPATH_GPIO_PORT0_BIT);
			chk0rcv = 1;
		}
		if (gpiostatus) {
			/*
			 * Some unexpected bits remain. If they could have
			 * caused the interrupt, complain and clear.
			 * To avoid repetition of this condition, also clear
			 * the mask. It is almost certainly due to error.
			 */
			const u32 mask = (u32) dd->ipath_gpio_mask;

			if (mask & gpiostatus) {
				FUNC8("Unexpected GPIO IRQ bits %x\n",
				  gpiostatus & mask);
				to_clear |= (gpiostatus & mask);
				dd->ipath_gpio_mask &= ~(gpiostatus & mask);
				FUNC14(dd,
					dd->ipath_kregs->kr_gpio_mask,
					dd->ipath_gpio_mask);
			}
		}
		if (to_clear) {
			FUNC14(dd, dd->ipath_kregs->kr_gpio_clear,
					(u64) to_clear);
		}
	}

	/*
	 * Clear the interrupt bits we found set, unless they are receive
	 * related, in which case we already cleared them above, and don't
	 * want to clear them again, because we might lose an interrupt.
	 * Clear it early, so we "know" know the chip will have seen this by
	 * the time we process the queue, and will re-interrupt if necessary.
	 * The processor itself won't take the interrupt again until we return.
	 */
	FUNC14(dd, dd->ipath_kregs->kr_intclear, istat);

	/*
	 * Handle kernel receive queues before checking for pio buffers
	 * available since receives can overflow; piobuf waiters can afford
	 * a few extra cycles, since they were waiting anyway, and user's
	 * waiting for receive are at the bottom.
	 */
	kportrbits = (1ULL << dd->ipath_i_rcvavail_shift) |
		(1ULL << dd->ipath_i_rcvurg_shift);
	if (chk0rcv || (istat & kportrbits)) {
		istat &= ~kportrbits;
		FUNC10(dd->ipath_pd[0]);
	}

	if (istat & ((dd->ipath_i_rcvavail_mask << dd->ipath_i_rcvavail_shift) |
		     (dd->ipath_i_rcvurg_mask << dd->ipath_i_rcvurg_shift)))
		FUNC4(dd, istat);

	if (istat & (INFINIPATH_I_SDMAINT | INFINIPATH_I_SDMADISABLED))
		FUNC3(dd, istat);

	if (istat & INFINIPATH_I_SPIOBUFAVAIL) {
		unsigned long flags;

		FUNC15(&dd->ipath_sendctrl_lock, flags);
		dd->ipath_sendctrl &= ~INFINIPATH_S_PIOINTBUFAVAIL;
		FUNC14(dd, dd->ipath_kregs->kr_sendctrl,
				 dd->ipath_sendctrl);
		FUNC13(dd, dd->ipath_kregs->kr_scratch);
		FUNC16(&dd->ipath_sendctrl_lock, flags);

		/* always process; sdma verbs uses PIO for acks and VL15  */
		FUNC2(dd);
	}

	ret = IRQ_HANDLED;

bail:
	return ret;
}