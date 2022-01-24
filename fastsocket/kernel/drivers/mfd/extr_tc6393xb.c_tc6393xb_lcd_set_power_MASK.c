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
typedef  int /*<<< orphan*/  u8 ;
struct tc6393xb {int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ SCR_FER ; 
 int /*<<< orphan*/  SCR_FER_SLCDEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct tc6393xb* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct platform_device *fb, bool on)
{
	struct platform_device *dev = FUNC5(fb->dev.parent);
	struct tc6393xb *tc6393xb = FUNC2(dev);
	u8 fer;
	unsigned long flags;

	FUNC3(&tc6393xb->lock, flags);

	fer = FUNC0(tc6393xb->scr + SCR_FER);
	if (on)
		fer |= SCR_FER_SLCDEN;
	else
		fer &= ~SCR_FER_SLCDEN;
	FUNC1(fer, tc6393xb->scr + SCR_FER);

	FUNC4(&tc6393xb->lock, flags);

	return 0;
}