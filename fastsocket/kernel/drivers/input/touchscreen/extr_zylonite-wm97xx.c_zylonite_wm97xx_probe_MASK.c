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
struct wm97xx {int /*<<< orphan*/  pen_irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  MFP_PIN_GPIO15 ; 
 int /*<<< orphan*/  MFP_PIN_GPIO26 ; 
 int /*<<< orphan*/  WM97XX_GPIO_13 ; 
 int /*<<< orphan*/  WM97XX_GPIO_2 ; 
 int /*<<< orphan*/  WM97XX_GPIO_IN ; 
 int /*<<< orphan*/  WM97XX_GPIO_NOTSTICKY ; 
 int /*<<< orphan*/  WM97XX_GPIO_NOWAKE ; 
 int /*<<< orphan*/  WM97XX_GPIO_OUT ; 
 int /*<<< orphan*/  WM97XX_GPIO_POL_HIGH ; 
 int /*<<< orphan*/  WM97XX_GPIO_STICKY ; 
 int /*<<< orphan*/  WM97XX_GPIO_WAKE ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct wm97xx* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wm97xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wm97xx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zylonite_mach_ops ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct wm97xx *wm = FUNC3(pdev);
	int gpio_touch_irq;

	if (FUNC1())
		gpio_touch_irq = FUNC2(MFP_PIN_GPIO15);
	else
		gpio_touch_irq = FUNC2(MFP_PIN_GPIO26);

	wm->pen_irq = FUNC0(gpio_touch_irq);
	FUNC4(FUNC0(gpio_touch_irq), IRQ_TYPE_EDGE_BOTH);

	FUNC5(wm, WM97XX_GPIO_13, WM97XX_GPIO_IN,
			   WM97XX_GPIO_POL_HIGH,
			   WM97XX_GPIO_STICKY,
			   WM97XX_GPIO_WAKE);
	FUNC5(wm, WM97XX_GPIO_2, WM97XX_GPIO_OUT,
			   WM97XX_GPIO_POL_HIGH,
			   WM97XX_GPIO_NOTSTICKY,
			   WM97XX_GPIO_NOWAKE);

	return FUNC6(wm, &zylonite_mach_ops);
}