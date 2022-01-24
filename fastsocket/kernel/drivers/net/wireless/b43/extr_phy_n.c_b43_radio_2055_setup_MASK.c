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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_nphy_channeltab_entry_rev2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2055_VCO_CAL10 ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,struct b43_nphy_channeltab_entry_rev2 const*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev,
				const struct b43_nphy_channeltab_entry_rev2 *e)
{
	FUNC0(dev->phy.rev >= 3);

	FUNC1(dev, e);
	FUNC4(50);
	FUNC2(dev, B2055_VCO_CAL10, 0x05);
	FUNC2(dev, B2055_VCO_CAL10, 0x45);
	FUNC3(dev, B43_MMIO_MACCTL); /* flush writes */
	FUNC2(dev, B2055_VCO_CAL10, 0x65);
	FUNC4(300);
}