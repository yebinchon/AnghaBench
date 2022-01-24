#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* phy_maskset ) (struct b43_wldev*,int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct b43_wldev *dev, u16 offset, u16 mask)
{
	if (dev->phy.ops->phy_maskset) {
		FUNC0(dev);
		dev->phy.ops->phy_maskset(dev, offset, mask, 0);
	} else {
		FUNC2(dev, offset,
			      FUNC1(dev, offset) & mask);
	}
}