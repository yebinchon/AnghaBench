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
typedef  int /*<<< orphan*/  u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_NPHY_TXIQW0 ; 
 int /*<<< orphan*/  B43_SHM_SH_NPHY_TXIQW1 ; 
 int /*<<< orphan*/  B43_SHM_SH_NPHY_TXIQW2 ; 
 int /*<<< orphan*/  B43_SHM_SH_NPHY_TXIQW3 ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	u16 array[4];
	FUNC1(dev, FUNC0(0xF, 0x50), 4, array);

	FUNC2(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW0, array[0]);
	FUNC2(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW1, array[1]);
	FUNC2(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW2, array[2]);
	FUNC2(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW3, array[3]);
}