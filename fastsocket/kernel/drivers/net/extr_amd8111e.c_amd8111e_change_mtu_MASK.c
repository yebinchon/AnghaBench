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
struct amd8111e_priv {int /*<<< orphan*/  lock; scalar_t__ mmio; } ;

/* Variables and functions */
 int AMD8111E_MAX_MTU ; 
 int AMD8111E_MIN_MTU ; 
 scalar_t__ CMD0 ; 
 int EINVAL ; 
 int /*<<< orphan*/  RUN ; 
 int FUNC0 (struct net_device*) ; 
 struct amd8111e_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int new_mtu)
{
	struct amd8111e_priv *lp = FUNC1(dev);
	int err;

	if ((new_mtu < AMD8111E_MIN_MTU) || (new_mtu > AMD8111E_MAX_MTU))
		return -EINVAL;

	if (!FUNC2(dev)) {
		/* new_mtu will be used
		   when device starts netxt time */
		dev->mtu = new_mtu;
		return 0;
	}

	FUNC4(&lp->lock);

        /* stop the chip */
	FUNC6(RUN, lp->mmio + CMD0);

	dev->mtu = new_mtu;

	err = FUNC0(dev);
	FUNC5(&lp->lock);
	if(!err)
		FUNC3(dev);
	return err;
}