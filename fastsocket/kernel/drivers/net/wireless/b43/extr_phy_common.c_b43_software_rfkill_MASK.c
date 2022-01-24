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
struct b43_phy {int radio_on; TYPE_1__* ops; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* software_rfkill ) (struct b43_wldev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int) ; 

void FUNC3(struct b43_wldev *dev, bool blocked)
{
	struct b43_phy *phy = &dev->phy;

	FUNC1(dev);
	phy->ops->software_rfkill(dev, blocked);
	phy->radio_on = !blocked;
	FUNC0(dev);
}