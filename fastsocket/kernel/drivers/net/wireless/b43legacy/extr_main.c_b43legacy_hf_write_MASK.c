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
typedef  int u32 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  B43legacy_SHM_SH_HOSTFHI ; 
 int /*<<< orphan*/  B43legacy_SHM_SH_HOSTFLO ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct b43legacy_wldev *dev, u32 value)
{
	FUNC0(dev, B43legacy_SHM_SHARED,
			      B43legacy_SHM_SH_HOSTFLO,
			      (value & 0x0000FFFF));
	FUNC0(dev, B43legacy_SHM_SHARED,
			      B43legacy_SHM_SH_HOSTFHI,
			      ((value & 0xFFFF0000) >> 16));
}