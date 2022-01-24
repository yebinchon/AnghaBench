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
typedef  int u64 ;
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_HOSTF1 ; 
 int /*<<< orphan*/  B43_SHM_SH_HOSTF2 ; 
 int /*<<< orphan*/  B43_SHM_SH_HOSTF3 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct b43_wldev *dev, u64 value)
{
	u16 lo, mi, hi;

	lo = (value & 0x00000000FFFFULL);
	mi = (value & 0x0000FFFF0000ULL) >> 16;
	hi = (value & 0xFFFF00000000ULL) >> 32;
	FUNC0(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF1, lo);
	FUNC0(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF2, mi);
	FUNC0(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF3, hi);
}