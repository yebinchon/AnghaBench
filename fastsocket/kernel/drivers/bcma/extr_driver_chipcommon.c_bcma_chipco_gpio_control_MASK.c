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
typedef  int /*<<< orphan*/  u32 ;
struct bcma_drv_cc {int /*<<< orphan*/  gpio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_GPIOCTL ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC3(struct bcma_drv_cc *cc, u32 mask, u32 value)
{
	unsigned long flags;
	u32 res;

	FUNC1(&cc->gpio_lock, flags);
	res = FUNC0(cc, BCMA_CC_GPIOCTL, mask, value);
	FUNC2(&cc->gpio_lock, flags);

	return res;
}