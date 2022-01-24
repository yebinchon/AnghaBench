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
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int radio_is_on; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int RADIO_2056_SYN_COM_PU ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_MIXA_BOOST_TUNE ; 
 int RADIO_2056_TX_MIXG_BOOST_TUNE ; 
 int RADIO_2056_TX_PADA_BOOST_TUNE ; 
 int RADIO_2056_TX_PADG_BOOST_TUNE ; 
 int RADIO_2056_TX_PGAA_BOOST_TUNE ; 
 int RADIO_2056_TX_PGAG_BOOST_TUNE ; 
 int /*<<< orphan*/  RFCC_CHIP0_PU ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

void FUNC14(struct brcms_phy *pi, bool on)
{
	if (on) {
		if (FUNC0(pi->pubpi.phy_rev, 7)) {
			if (!pi->radio_is_on) {
				FUNC12(pi);
				FUNC7(pi);
				FUNC10(pi);
			}

			FUNC4((struct brcms_phy_pub *) pi,
					     pi->radio_chanspec);
		} else if (FUNC0(pi->pubpi.phy_rev, 3)) {
			FUNC12(pi);
			FUNC6(pi);
			FUNC9(pi);

			FUNC4((struct brcms_phy_pub *) pi,
					     pi->radio_chanspec);
		} else {
			FUNC11(pi);
			FUNC5(pi);
			FUNC8(pi);
		}

		pi->radio_is_on = true;

	} else {

		if (FUNC0(pi->pubpi.phy_rev, 3)
		    && FUNC1(pi->pubpi.phy_rev, 7)) {
			FUNC2(pi, 0x78, ~RFCC_CHIP0_PU);
			FUNC3(pi, RADIO_2056_SYN_COM_PU, 0x2, 0x0);

			FUNC13(pi,
					RADIO_2056_TX_PADA_BOOST_TUNE |
					RADIO_2056_TX0, 0);
			FUNC13(pi,
					RADIO_2056_TX_PADG_BOOST_TUNE |
					RADIO_2056_TX0, 0);
			FUNC13(pi,
					RADIO_2056_TX_PGAA_BOOST_TUNE |
					RADIO_2056_TX0, 0);
			FUNC13(pi,
					RADIO_2056_TX_PGAG_BOOST_TUNE |
					RADIO_2056_TX0, 0);
			FUNC3(pi,
				      RADIO_2056_TX_MIXA_BOOST_TUNE |
				      RADIO_2056_TX0, 0xf0, 0);
			FUNC13(pi,
					RADIO_2056_TX_MIXG_BOOST_TUNE |
					RADIO_2056_TX0, 0);

			FUNC13(pi,
					RADIO_2056_TX_PADA_BOOST_TUNE |
					RADIO_2056_TX1, 0);
			FUNC13(pi,
					RADIO_2056_TX_PADG_BOOST_TUNE |
					RADIO_2056_TX1, 0);
			FUNC13(pi,
					RADIO_2056_TX_PGAA_BOOST_TUNE |
					RADIO_2056_TX1, 0);
			FUNC13(pi,
					RADIO_2056_TX_PGAG_BOOST_TUNE |
					RADIO_2056_TX1, 0);
			FUNC3(pi,
				      RADIO_2056_TX_MIXA_BOOST_TUNE |
				      RADIO_2056_TX1, 0xf0, 0);
			FUNC13(pi,
					RADIO_2056_TX_MIXG_BOOST_TUNE |
					RADIO_2056_TX1, 0);

			pi->radio_is_on = false;
		}

		if (FUNC0(pi->pubpi.phy_rev, 8)) {
			FUNC2(pi, 0x78, ~RFCC_CHIP0_PU);
			pi->radio_is_on = false;
		}

	}
}