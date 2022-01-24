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
struct TYPE_2__ {struct b43_phy_a* a; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_a {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_phy_a*) ; 
 struct b43_phy_a* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct b43_wldev *dev)
{
	struct b43_phy_a *aphy;
	int err;

	aphy = FUNC2(sizeof(*aphy), GFP_KERNEL);
	if (!aphy)
		return -ENOMEM;
	dev->phy.a = aphy;

	err = FUNC0(dev);
	if (err)
		goto err_free_aphy;

	return 0;

err_free_aphy:
	FUNC1(aphy);
	dev->phy.a = NULL;

	return err;
}