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
struct net_device {int dummy; } ;
struct ks8851_net {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct ks8851_net*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ks8851_net* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int phy_addr, int reg)
{
	struct ks8851_net *ks = FUNC4(dev);
	int ksreg;
	int result;

	ksreg = FUNC0(reg);
	if (!ksreg)
		return 0x0;	/* no error return allowed, so use zero */

	FUNC2(&ks->lock);
	result = FUNC1(ks, ksreg);
	FUNC3(&ks->lock);

	return result;
}