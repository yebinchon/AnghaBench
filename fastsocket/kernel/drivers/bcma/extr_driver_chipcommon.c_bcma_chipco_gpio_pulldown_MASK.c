#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct bcma_drv_cc {int /*<<< orphan*/  gpio_lock; TYPE_2__* core; } ;
struct TYPE_3__ {int rev; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_GPIOPULLDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC3(struct bcma_drv_cc *cc, u32 mask, u32 value)
{
	unsigned long flags;
	u32 res;

	if (cc->core->id.rev < 20)
		return 0;

	FUNC1(&cc->gpio_lock, flags);
	res = FUNC0(cc, BCMA_CC_GPIOPULLDOWN, mask, value);
	FUNC2(&cc->gpio_lock, flags);

	return res;
}