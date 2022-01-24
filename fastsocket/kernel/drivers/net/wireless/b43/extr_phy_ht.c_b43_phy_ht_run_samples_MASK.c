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
struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_phy_ht {scalar_t__* bb_mult_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  B43_PHY_HT_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_MODE ; 
 int B43_PHY_HT_RF_SEQ_MODE_CA_OVER ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_STATUS ; 
 int /*<<< orphan*/  B43_PHY_HT_SAMP_CMD ; 
 int /*<<< orphan*/  B43_PHY_HT_SAMP_DEP_CNT ; 
 int /*<<< orphan*/  B43_PHY_HT_SAMP_LOOP_CNT ; 
 int /*<<< orphan*/  B43_PHY_HT_SAMP_WAIT_CNT ; 
 scalar_t__ FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev, u16 samps, u16 loops,
				   u16 wait)
{
	struct b43_phy_ht *phy_ht = dev->phy.ht;
	u16 save_seq_mode;
	int i;

	for (i = 0; i < 3; i++) {
		if (phy_ht->bb_mult_save[i] < 0)
			phy_ht->bb_mult_save[i] = FUNC1(dev, FUNC0(13, 0x63 + i * 4));
	}

	FUNC5(dev, B43_PHY_HT_SAMP_DEP_CNT, samps - 1);
	if (loops != 0xFFFF)
		loops--;
	FUNC5(dev, B43_PHY_HT_SAMP_LOOP_CNT, loops);
	FUNC5(dev, B43_PHY_HT_SAMP_WAIT_CNT, wait);

	save_seq_mode = FUNC3(dev, B43_PHY_HT_RF_SEQ_MODE);
	FUNC4(dev, B43_PHY_HT_RF_SEQ_MODE,
		    B43_PHY_HT_RF_SEQ_MODE_CA_OVER);

	/* TODO: find out mask bits! Do we need more function arguments? */
	FUNC2(dev, B43_PHY_HT_SAMP_CMD, ~0);
	FUNC2(dev, B43_PHY_HT_SAMP_CMD, ~0);
	FUNC2(dev, B43_PHY_HT_IQLOCAL_CMDGCTL, ~0);
	FUNC4(dev, B43_PHY_HT_SAMP_CMD, 0x1);

	for (i = 0; i < 100; i++) {
		if (!(FUNC3(dev, B43_PHY_HT_RF_SEQ_STATUS) & 1)) {
			i = 0;
			break;
		}
		FUNC7(10);
	}
	if (i)
		FUNC6(dev->wl, "run samples timeout\n");

	FUNC5(dev, B43_PHY_HT_RF_SEQ_MODE, save_seq_mode);
}