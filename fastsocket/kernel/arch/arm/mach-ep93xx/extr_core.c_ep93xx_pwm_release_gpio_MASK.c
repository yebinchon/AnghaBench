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
struct platform_device {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP93XX_GPIO_LINE_EGPIO14 ; 
 int /*<<< orphan*/  EP93XX_SYSCON_DEVCFG_PONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct platform_device *pdev)
{
	if (pdev->id == 1) {
		FUNC1(EP93XX_GPIO_LINE_EGPIO14);
		FUNC2(EP93XX_GPIO_LINE_EGPIO14);

		/* EGPIO[14] used for GPIO */
		FUNC0(EP93XX_SYSCON_DEVCFG_PONG);
	}
}