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
struct TYPE_2__ {int radio_ver; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {unsigned int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43_wldev*,unsigned int) ; 
 int FUNC4 (struct b43_wldev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct b43_wldev *dev,
				       unsigned int new_channel)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	int err;

	if (dev->phy.radio_ver == 0x2063) {
		err = FUNC4(dev, new_channel);
		if (err)
			return err;
	} else {
		err = FUNC3(dev, new_channel);
		if (err)
			return err;
		FUNC5(dev, new_channel);
		FUNC2(dev, FUNC1(new_channel));
	}

	lpphy->channel = new_channel;
	FUNC0(dev, B43_MMIO_CHANNEL, new_channel);

	return 0;
}