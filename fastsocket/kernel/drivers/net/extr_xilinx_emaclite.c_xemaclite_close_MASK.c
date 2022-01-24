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
struct net_local {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_local*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) FUNC1(dev);

	FUNC2(dev);
	FUNC3(lp);
	FUNC0(dev->irq, dev);

	return 0;
}