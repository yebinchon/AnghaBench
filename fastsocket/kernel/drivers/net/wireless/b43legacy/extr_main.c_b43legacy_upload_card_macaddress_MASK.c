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
struct b43legacy_wldev {TYPE_1__* wl; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MACFILTER_SELF ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 

__attribute__((used)) static void FUNC2(struct b43legacy_wldev *dev)
{
	FUNC1(dev);
	FUNC0(dev, B43legacy_MACFILTER_SELF,
				dev->wl->mac_addr);
}