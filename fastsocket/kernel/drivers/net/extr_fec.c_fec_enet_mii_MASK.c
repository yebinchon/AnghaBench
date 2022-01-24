#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct fec_enet_private {int /*<<< orphan*/  mii_lock; scalar_t__ hwp; } ;
struct TYPE_4__ {int /*<<< orphan*/  mii_regval; struct TYPE_4__* mii_next; int /*<<< orphan*/  (* mii_func ) (int /*<<< orphan*/ ,struct net_device*) ;} ;
typedef  TYPE_1__ mii_list_t ;

/* Variables and functions */
 scalar_t__ FEC_MII_DATA ; 
 TYPE_1__* mii_free ; 
 TYPE_1__* mii_head ; 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct net_device *dev)
{
	struct	fec_enet_private *fep;
	mii_list_t	*mip;

	fep = FUNC0(dev);
	FUNC3(&fep->mii_lock);

	if ((mip = mii_head) == NULL) {
		FUNC1("MII and no head!\n");
		goto unlock;
	}

	if (mip->mii_func != NULL)
		(*(mip->mii_func))(FUNC2(fep->hwp + FEC_MII_DATA), dev);

	mii_head = mip->mii_next;
	mip->mii_next = mii_free;
	mii_free = mip;

	if ((mip = mii_head) != NULL)
		FUNC6(mip->mii_regval, fep->hwp + FEC_MII_DATA);

unlock:
	FUNC4(&fep->mii_lock);
}