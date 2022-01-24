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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct qib_pportdata {int led_override; int port; struct qib_devdata* dd; } ;
struct qib_devdata {TYPE_1__* cspec; scalar_t__ diag_client; } ;
struct TYPE_2__ {int extctrl; int /*<<< orphan*/  gpio_lock; } ;

/* Variables and functions */
 int ExtLED_IB1_GRN ; 
 int ExtLED_IB1_MASK ; 
 int ExtLED_IB1_YEL ; 
 int ExtLED_IB2_GRN ; 
 int ExtLED_IB2_MASK ; 
 int ExtLED_IB2_YEL ; 
 int IBA7322_LEDBLINK_OFF_SHIFT ; 
 int IBA7322_LEDBLINK_ON_SHIFT ; 
 scalar_t__ IB_PHYSPORTSTATE_LINKUP ; 
 scalar_t__ IB_PORT_ACTIVE ; 
 int QIB_LED_LOG ; 
 int QIB_LED_PHYS ; 
 int /*<<< orphan*/  kr_extctrl ; 
 int /*<<< orphan*/  krp_ibcstatus_a ; 
 int /*<<< orphan*/  krp_rcvpktledcnt ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qib_pportdata *ppd, u32 on)
{
	struct qib_devdata *dd = ppd->dd;
	u64 extctl, ledblink = 0, val;
	unsigned long flags;
	int yel, grn;

	/*
	 * The diags use the LED to indicate diag info, so we leave
	 * the external LED alone when the diags are running.
	 */
	if (dd->diag_client)
		return;

	/* Allow override of LED display for, e.g. Locating system in rack */
	if (ppd->led_override) {
		grn = (ppd->led_override & QIB_LED_PHYS);
		yel = (ppd->led_override & QIB_LED_LOG);
	} else if (on) {
		val = FUNC2(ppd, krp_ibcstatus_a);
		grn = FUNC1(val) ==
			IB_PHYSPORTSTATE_LINKUP;
		yel = FUNC0(val) == IB_PORT_ACTIVE;
	} else {
		grn = 0;
		yel = 0;
	}

	FUNC5(&dd->cspec->gpio_lock, flags);
	extctl = dd->cspec->extctrl & (ppd->port == 1 ?
		~ExtLED_IB1_MASK : ~ExtLED_IB2_MASK);
	if (grn) {
		extctl |= ppd->port == 1 ? ExtLED_IB1_GRN : ExtLED_IB2_GRN;
		/*
		 * Counts are in chip clock (4ns) periods.
		 * This is 1/16 sec (66.6ms) on,
		 * 3/16 sec (187.5 ms) off, with packets rcvd.
		 */
		ledblink = ((66600 * 1000UL / 4) << IBA7322_LEDBLINK_ON_SHIFT) |
			((187500 * 1000UL / 4) << IBA7322_LEDBLINK_OFF_SHIFT);
	}
	if (yel)
		extctl |= ppd->port == 1 ? ExtLED_IB1_YEL : ExtLED_IB2_YEL;
	dd->cspec->extctrl = extctl;
	FUNC3(dd, kr_extctrl, dd->cspec->extctrl);
	FUNC6(&dd->cspec->gpio_lock, flags);

	if (ledblink) /* blink the LED on packet receive */
		FUNC4(ppd, krp_rcvpktledcnt, ledblink);
}