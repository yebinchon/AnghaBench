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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_FN_INTC_IRQ0 ; 
 int /*<<< orphan*/  GPIO_PTZ0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int val = 0;
	FUNC1(GPIO_FN_INTC_IRQ0);
	FUNC3(GPIO_PTZ0, NULL);
	FUNC0(GPIO_PTZ0);

	val = FUNC2(GPIO_PTZ0);

	FUNC1(GPIO_PTZ0);
	FUNC3(GPIO_FN_INTC_IRQ0, NULL);

	return val ? 0 : 1;
}