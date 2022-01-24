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
 int /*<<< orphan*/  GPIO_IRQ_falling_edge ; 
 int /*<<< orphan*/  GPIO_IRQ_level_high ; 
 int /*<<< orphan*/  GPIO_IRQ_level_low ; 
 int /*<<< orphan*/  GPIO_IRQ_rising_edge ; 
 int /*<<< orphan*/  IXP2000_GPIO_FEDR ; 
 int /*<<< orphan*/  IXP2000_GPIO_LSHR ; 
 int /*<<< orphan*/  IXP2000_GPIO_LSLR ; 
 int /*<<< orphan*/  IXP2000_GPIO_REDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(IXP2000_GPIO_FEDR, GPIO_IRQ_falling_edge);
	FUNC1(IXP2000_GPIO_REDR, GPIO_IRQ_rising_edge);
	FUNC1(IXP2000_GPIO_LSLR, GPIO_IRQ_level_low);
	FUNC0(IXP2000_GPIO_LSHR, GPIO_IRQ_level_high);
}