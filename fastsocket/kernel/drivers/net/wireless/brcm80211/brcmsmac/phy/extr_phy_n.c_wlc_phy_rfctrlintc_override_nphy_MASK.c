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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ phy_corenum; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RESET2RX ; 
 scalar_t__ NPHY_RfctrlIntc_override_EXT_LNA_GAIN ; 
 scalar_t__ NPHY_RfctrlIntc_override_EXT_LNA_PU ; 
 scalar_t__ NPHY_RfctrlIntc_override_OFF ; 
 scalar_t__ NPHY_RfctrlIntc_override_PA ; 
 scalar_t__ NPHY_RfctrlIntc_override_TRSW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHY_CORE_0 ; 
 scalar_t__ PHY_CORE_1 ; 
 scalar_t__ RADIO_MIMO_CORESEL_CORE1 ; 
 scalar_t__ RADIO_MIMO_CORESEL_CORE2 ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 
 int FUNC8 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct brcms_phy *pi, u8 field, u16 value,
				 u8 core_code)
{
	u16 mask;
	u16 val;
	u8 core;

	if (FUNC1(pi->pubpi.phy_rev, 3)) {
		for (core = 0; core < pi->pubpi.phy_corenum; core++) {
			if (core_code == RADIO_MIMO_CORESEL_CORE1
			    && core == PHY_CORE_1)
				continue;
			else if (core_code == RADIO_MIMO_CORESEL_CORE2
				 && core == PHY_CORE_0)
				continue;

			if (FUNC2(pi->pubpi.phy_rev, 7)) {

				mask = (0x1 << 10);
				val = 1 << 10;
				FUNC6(pi, (core == PHY_CORE_0) ? 0x91 :
					    0x92, mask, val);
			}

			if (field == NPHY_RfctrlIntc_override_OFF) {

				FUNC10(pi, (core == PHY_CORE_0) ? 0x91 :
					      0x92, 0);

				FUNC9(pi,
							 NPHY_RFSEQ_RESET2RX);
			} else if (field == NPHY_RfctrlIntc_override_TRSW) {

				if (FUNC1(pi->pubpi.phy_rev, 7)) {

					mask = (0x1 << 6) | (0x1 << 7);

					val = value << 6;
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);

					FUNC7(pi,
						   (core ==
						    PHY_CORE_0) ? 0x91 : 0x92,
						   (0x1 << 10));

					FUNC5(pi, 0x2ff, (u16)
						    ~(0x3 << 14));
					FUNC7(pi, 0x2ff, (0x1 << 13));
					FUNC7(pi, 0x2ff, (0x1 << 0));
				} else {

					mask = (0x1 << 6) |
					       (0x1 << 7) |
					       (0x1 << 8) | (0x1 << 9);
					val = value << 6;
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);

					mask = (0x1 << 0);
					val = 1 << 0;
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0xe7 : 0xec,
						    mask, val);

					mask = (core == PHY_CORE_0) ?
					       (0x1 << 0) : (0x1 << 1);
					val = 1 << ((core == PHY_CORE_0) ?
						    0 : 1);
					FUNC6(pi, 0x78, mask, val);

					FUNC3(((FUNC8(pi, 0x78) & val)
						  != 0), 10000);
					if (FUNC4(FUNC8(pi, 0x78) & val,
						 "HW error: override failed"))
						return;

					mask = (0x1 << 0);
					val = 0 << 0;
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0xe7 : 0xec,
						    mask, val);
				}
			} else if (field == NPHY_RfctrlIntc_override_PA) {
				if (FUNC1(pi->pubpi.phy_rev, 7)) {

					mask = (0x1 << 4) | (0x1 << 5);

					if (FUNC0(pi->radio_chanspec))
						val = value << 5;
					else
						val = value << 4;

					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);

					FUNC7(pi,
						   (core ==
						    PHY_CORE_0) ? 0x91 : 0x92,
						   (0x1 << 12));
				} else {

					if (FUNC0(pi->radio_chanspec)) {
						mask = (0x1 << 5);
						val = value << 5;
					} else {
						mask = (0x1 << 4);
						val = value << 4;
					}
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);
				}
			} else if (field ==
				   NPHY_RfctrlIntc_override_EXT_LNA_PU) {
				if (FUNC1(pi->pubpi.phy_rev, 7)) {
					if (FUNC0(pi->radio_chanspec)) {

						mask = (0x1 << 0);
						val = value << 0;
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, val);

						mask = (0x1 << 2);
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, 0);
					} else {

						mask = (0x1 << 2);
						val = value << 2;
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, val);

						mask = (0x1 << 0);
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, 0);
					}

					mask = (0x1 << 11);
					val = 1 << 11;
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);
				} else {

					if (FUNC0(pi->radio_chanspec)) {
						mask = (0x1 << 0);
						val = value << 0;
					} else {
						mask = (0x1 << 2);
						val = value << 2;
					}
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);
				}
			} else if (field ==
				   NPHY_RfctrlIntc_override_EXT_LNA_GAIN) {
				if (FUNC1(pi->pubpi.phy_rev, 7)) {
					if (FUNC0(pi->radio_chanspec)) {

						mask = (0x1 << 1);
						val = value << 1;
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, val);

						mask = (0x1 << 3);
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, 0);
					} else {

						mask = (0x1 << 3);
						val = value << 3;
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, val);

						mask = (0x1 << 1);
						FUNC6(pi,
							    (core ==
							     PHY_CORE_0) ? 0x91
							    : 0x92, mask, 0);
					}

					mask = (0x1 << 11);
					val = 1 << 11;
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);
				} else {

					if (FUNC0(pi->radio_chanspec)) {
						mask = (0x1 << 1);
						val = value << 1;
					} else {
						mask = (0x1 << 3);
						val = value << 3;
					}
					FUNC6(pi,
						    (core ==
						     PHY_CORE_0) ? 0x91 : 0x92,
						    mask, val);
				}
			}
		}
	}
}