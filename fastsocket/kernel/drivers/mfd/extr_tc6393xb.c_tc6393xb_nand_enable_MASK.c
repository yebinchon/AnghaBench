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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct tc6393xb* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *nand)
{
	struct platform_device *dev = FUNC6(nand->dev.parent);
	struct tc6393xb *tc6393xb = FUNC2(dev);
	unsigned long flags;

	FUNC3(&tc6393xb->lock, flags);

	/* SMD buffer on */
	FUNC1(&dev->dev, "SMD buffer on\n");
	FUNC5(0xff, tc6393xb->scr + FUNC0(1));

	FUNC4(&tc6393xb->lock, flags);

	return 0;
}