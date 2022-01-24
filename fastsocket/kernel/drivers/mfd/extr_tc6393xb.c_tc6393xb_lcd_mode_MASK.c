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
struct tc6393xb {int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fb_videomode {int pixclock; } ;

/* Variables and functions */
 scalar_t__ SCR_PLL1CR ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct tc6393xb* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct platform_device *fb,
					const struct fb_videomode *mode) {
	struct platform_device *dev = FUNC4(fb->dev.parent);
	struct tc6393xb *tc6393xb = FUNC1(dev);
	unsigned long flags;

	FUNC2(&tc6393xb->lock, flags);

	FUNC0(mode->pixclock, tc6393xb->scr + SCR_PLL1CR + 0);
	FUNC0(mode->pixclock >> 16, tc6393xb->scr + SCR_PLL1CR + 2);

	FUNC3(&tc6393xb->lock, flags);

	return 0;
}