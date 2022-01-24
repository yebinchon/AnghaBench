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
struct wm8350_power {int /*<<< orphan*/  ac; int /*<<< orphan*/  usb; int /*<<< orphan*/  battery; struct wm8350_charger_policy* policy; } ;
struct wm8350_charger_policy {int dummy; } ;
struct wm8350 {int /*<<< orphan*/  dev; struct wm8350_power power; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_BATTERY_CHARGER_CONTROL_1 ; 
 int /*<<< orphan*/  WM8350_CHG_FAST ; 
#define  WM8350_IRQ_CHG_BAT_COLD 140 
#define  WM8350_IRQ_CHG_BAT_FAIL 139 
#define  WM8350_IRQ_CHG_BAT_HOT 138 
#define  WM8350_IRQ_CHG_END 137 
#define  WM8350_IRQ_CHG_FAST_RDY 136 
#define  WM8350_IRQ_CHG_START 135 
#define  WM8350_IRQ_CHG_TO 134 
#define  WM8350_IRQ_CHG_VBATT_LT_2P85 133 
#define  WM8350_IRQ_CHG_VBATT_LT_3P1 132 
#define  WM8350_IRQ_CHG_VBATT_LT_3P9 131 
#define  WM8350_IRQ_EXT_BAT_FB 130 
#define  WM8350_IRQ_EXT_USB_FB 129 
#define  WM8350_IRQ_EXT_WALL_FB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,struct wm8350_charger_policy*) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC6 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC7 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wm8350 *wm8350, int irq, void *data)
{
	struct wm8350_power *power = &wm8350->power;
	struct wm8350_charger_policy *policy = power->policy;

	switch (irq) {
	case WM8350_IRQ_CHG_BAT_FAIL:
		FUNC1(wm8350->dev, "battery failed\n");
		break;
	case WM8350_IRQ_CHG_TO:
		FUNC1(wm8350->dev, "charger timeout\n");
		FUNC3(&power->battery);
		break;

	case WM8350_IRQ_CHG_BAT_HOT:
	case WM8350_IRQ_CHG_BAT_COLD:
	case WM8350_IRQ_CHG_START:
	case WM8350_IRQ_CHG_END:
		FUNC3(&power->battery);
		break;

	case WM8350_IRQ_CHG_FAST_RDY:
		FUNC0(wm8350->dev, "fast charger ready\n");
		FUNC4(wm8350, policy);
		FUNC6(wm8350);
		FUNC7(wm8350, WM8350_BATTERY_CHARGER_CONTROL_1,
				WM8350_CHG_FAST);
		FUNC5(wm8350);
		break;

	case WM8350_IRQ_CHG_VBATT_LT_3P9:
		FUNC2(wm8350->dev, "battery < 3.9V\n");
		break;
	case WM8350_IRQ_CHG_VBATT_LT_3P1:
		FUNC2(wm8350->dev, "battery < 3.1V\n");
		break;
	case WM8350_IRQ_CHG_VBATT_LT_2P85:
		FUNC2(wm8350->dev, "battery < 2.85V\n");
		break;

		/* Supply change.  We will overnotify but it should do
		 * no harm. */
	case WM8350_IRQ_EXT_USB_FB:
	case WM8350_IRQ_EXT_WALL_FB:
		FUNC4(wm8350, policy);
	case WM8350_IRQ_EXT_BAT_FB:   /* Fall through */
		FUNC3(&power->battery);
		FUNC3(&power->usb);
		FUNC3(&power->ac);
		break;

	default:
		FUNC1(wm8350->dev, "Unknown interrupt %d\n", irq);
	}
}