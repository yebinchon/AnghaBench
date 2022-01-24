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
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_PWRDYN2 ; 
 int /*<<< orphan*/  B43_OFDMTAB_UNKNOWN_APHY ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	u16 backup;

	backup = FUNC1(dev, B43_OFDMTAB_PWRDYN2, 0);
	FUNC2(dev, B43_OFDMTAB_PWRDYN2, 0, 7);
	FUNC2(dev, B43_OFDMTAB_UNKNOWN_APHY, 0, 0);
	FUNC0(dev, true, true);
	FUNC2(dev, B43_OFDMTAB_PWRDYN2, 0, backup);
}