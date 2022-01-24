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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_PHY_LCN_AFE_CTL1 ; 
 int /*<<< orphan*/  B43_PHY_LCN_AFE_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev, bool on)
{
	if (on) {
		FUNC0(dev, B43_PHY_LCN_AFE_CTL1, ~0x7);
	} else {
		FUNC1(dev, B43_PHY_LCN_AFE_CTL2, 0x7);
		FUNC1(dev, B43_PHY_LCN_AFE_CTL1, 0x7);
	}
}