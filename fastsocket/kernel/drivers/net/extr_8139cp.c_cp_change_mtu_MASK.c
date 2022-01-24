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
struct net_device {int mtu; } ;
struct cp_private {int dummy; } ;

/* Variables and functions */
 int CP_MAX_MTU ; 
 int CP_MIN_MTU ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cp_private*) ; 
 struct cp_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int new_mtu)
{
	struct cp_private *cp = FUNC3(dev);

	/* check for invalid MTU, according to hardware limits */
	if (new_mtu < CP_MIN_MTU || new_mtu > CP_MAX_MTU)
		return -EINVAL;

	/* if network interface not up, no need for complexity */
	if (!FUNC4(dev)) {
		dev->mtu = new_mtu;
		FUNC2(cp);	/* set new rx buf size */
		return 0;
	}

	/* network IS up, close it, reset MTU, and come up again. */
	FUNC0(dev);
	dev->mtu = new_mtu;
	FUNC2(cp);
	return FUNC1(dev);
}