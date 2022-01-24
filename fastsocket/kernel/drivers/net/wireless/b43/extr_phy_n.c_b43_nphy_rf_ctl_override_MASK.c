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
typedef  int u8 ;
typedef  int u16 ;
struct nphy_rf_control_override_rev3 {int val_mask; int val_shift; int /*<<< orphan*/  val_addr1; int /*<<< orphan*/  val_addr0; int /*<<< orphan*/  en_addr1; int /*<<< orphan*/  en_addr0; } ;
struct nphy_rf_control_override_rev2 {int bmask; int shift; int /*<<< orphan*/  addr1; int /*<<< orphan*/  addr0; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;

/* Variables and functions */
 int B43_NPHY_RFCTL_CMD ; 
 int B43_NPHY_RFCTL_CMD_START ; 
 int B43_NPHY_RFCTL_OVER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int) ; 
 struct nphy_rf_control_override_rev2* tbl_rf_control_override_rev2 ; 
 struct nphy_rf_control_override_rev3* tbl_rf_control_override_rev3 ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev, u16 field,
				     u16 value, u8 core, bool off)
{
	int i;
	u8 index = FUNC6(field);
	u8 addr, en_addr, val_addr;
	/* we expect only one bit set */
	FUNC1(field & (~(1 << (index - 1))));

	if (dev->phy.rev >= 3) {
		const struct nphy_rf_control_override_rev3 *rf_ctrl;
		for (i = 0; i < 2; i++) {
			if (index == 0 || index == 16) {
				FUNC5(dev->wl,
					"Unsupported RF Ctrl Override call\n");
				return;
			}

			rf_ctrl = &tbl_rf_control_override_rev3[index - 1];
			en_addr = FUNC0((i == 0) ?
				rf_ctrl->en_addr0 : rf_ctrl->en_addr1);
			val_addr = FUNC0((i == 0) ?
				rf_ctrl->val_addr0 : rf_ctrl->val_addr1);

			if (off) {
				FUNC2(dev, en_addr, ~(field));
				FUNC2(dev, val_addr,
						~(rf_ctrl->val_mask));
			} else {
				if (core == 0 || ((1 << i) & core)) {
					FUNC4(dev, en_addr, field);
					FUNC3(dev, val_addr,
						~(rf_ctrl->val_mask),
						(value << rf_ctrl->val_shift));
				}
			}
		}
	} else {
		const struct nphy_rf_control_override_rev2 *rf_ctrl;
		if (off) {
			FUNC2(dev, B43_NPHY_RFCTL_OVER, ~(field));
			value = 0;
		} else {
			FUNC4(dev, B43_NPHY_RFCTL_OVER, field);
		}

		for (i = 0; i < 2; i++) {
			if (index <= 1 || index == 16) {
				FUNC5(dev->wl,
					"Unsupported RF Ctrl Override call\n");
				return;
			}

			if (index == 2 || index == 10 ||
			    (index >= 13 && index <= 15)) {
				core = 1;
			}

			rf_ctrl = &tbl_rf_control_override_rev2[index - 2];
			addr = FUNC0((i == 0) ?
				rf_ctrl->addr0 : rf_ctrl->addr1);

			if ((1 << i) & core)
				FUNC3(dev, addr, ~(rf_ctrl->bmask),
						(value << rf_ctrl->shift));

			FUNC4(dev, B43_NPHY_RFCTL_OVER, 0x1);
			FUNC4(dev, B43_NPHY_RFCTL_CMD,
					B43_NPHY_RFCTL_CMD_START);
			FUNC7(1);
			FUNC2(dev, B43_NPHY_RFCTL_OVER, 0xFFFE);
		}
	}
}