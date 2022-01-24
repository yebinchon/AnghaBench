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
struct wm8350 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_IRQ_CHG_BAT_COLD ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_BAT_FAIL ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_BAT_HOT ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_END ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_FAST_RDY ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_START ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_TO ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_VBATT_LT_2P85 ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_VBATT_LT_3P1 ; 
 int /*<<< orphan*/  WM8350_IRQ_CHG_VBATT_LT_3P9 ; 
 int /*<<< orphan*/  WM8350_IRQ_EXT_BAT_FB ; 
 int /*<<< orphan*/  WM8350_IRQ_EXT_USB_FB ; 
 int /*<<< orphan*/  WM8350_IRQ_EXT_WALL_FB ; 
 int /*<<< orphan*/  wm8350_charger_handler ; 
 int /*<<< orphan*/  FUNC0 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wm8350 *wm8350)
{
	/* register our interest in charger events */
	FUNC0(wm8350, WM8350_IRQ_CHG_BAT_HOT,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_BAT_HOT);
	FUNC0(wm8350, WM8350_IRQ_CHG_BAT_COLD,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_BAT_COLD);
	FUNC0(wm8350, WM8350_IRQ_CHG_BAT_FAIL,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_BAT_FAIL);
	FUNC0(wm8350, WM8350_IRQ_CHG_TO,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_TO);
	FUNC0(wm8350, WM8350_IRQ_CHG_END,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_END);
	FUNC0(wm8350, WM8350_IRQ_CHG_START,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_START);
	FUNC0(wm8350, WM8350_IRQ_CHG_FAST_RDY,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_FAST_RDY);
	FUNC0(wm8350, WM8350_IRQ_CHG_VBATT_LT_3P9,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_VBATT_LT_3P9);
	FUNC0(wm8350, WM8350_IRQ_CHG_VBATT_LT_3P1,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_VBATT_LT_3P1);
	FUNC0(wm8350, WM8350_IRQ_CHG_VBATT_LT_2P85,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_CHG_VBATT_LT_2P85);

	/* and supply change events */
	FUNC0(wm8350, WM8350_IRQ_EXT_USB_FB,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_EXT_USB_FB);
	FUNC0(wm8350, WM8350_IRQ_EXT_WALL_FB,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_EXT_WALL_FB);
	FUNC0(wm8350, WM8350_IRQ_EXT_BAT_FB,
			    wm8350_charger_handler, NULL);
	FUNC1(wm8350, WM8350_IRQ_EXT_BAT_FB);
}