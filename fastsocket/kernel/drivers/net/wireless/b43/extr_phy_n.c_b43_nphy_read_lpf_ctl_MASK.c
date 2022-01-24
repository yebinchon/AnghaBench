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
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ is_40mhz; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct b43_wldev *dev, u16 offset)
{
	if (!offset)
		offset = (dev->phy.is_40mhz) ? 0x159 : 0x154;
	return FUNC1(dev, FUNC0(7, offset)) & 0x7;
}