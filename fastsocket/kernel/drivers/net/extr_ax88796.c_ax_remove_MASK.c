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
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct ax_device {int /*<<< orphan*/  mem2; scalar_t__ map2; int /*<<< orphan*/  mem; } ;
struct TYPE_2__ {scalar_t__ mem; } ;

/* Variables and functions */
 TYPE_1__ ei_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ax_device* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *_dev)
{
	struct net_device *dev = FUNC4(_dev);
	struct ax_device  *ax;

	ax = FUNC6(dev);

	FUNC7(dev);
	FUNC0(dev->irq, dev);

	FUNC2(ei_status.mem);
	FUNC5(ax->mem);
	FUNC3(ax->mem);

	if (ax->map2) {
		FUNC2(ax->map2);
		FUNC5(ax->mem2);
		FUNC3(ax->mem2);
	}

	FUNC1(dev);

	return 0;
}