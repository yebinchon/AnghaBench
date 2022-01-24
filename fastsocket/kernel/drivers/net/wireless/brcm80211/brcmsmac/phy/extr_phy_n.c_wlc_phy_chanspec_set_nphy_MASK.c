#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct nphy_sfo_cfg {int dummy; } ;
struct chan_info_nphy_radio205x {int /*<<< orphan*/  PHY_BW1a; } ;
struct chan_info_nphy_radio2057_rev5 {int /*<<< orphan*/  PHY_BW1a; } ;
struct chan_info_nphy_radio2057 {int /*<<< orphan*/  PHY_BW1a; } ;
struct chan_info_nphy_2055 {int /*<<< orphan*/  PHY_BW1a; } ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_4__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {scalar_t__ bw; TYPE_2__ pubpi; TYPE_1__* sh; } ;
struct TYPE_3__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int BPHY_BAND_SEL_UP20 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int PRIM_SEL_UP20 ; 
 int RADIO_2055_MASTER_CNTRL1 ; 
 int RADIO_2056_SYN ; 
 int RADIO_2056_SYN_COM_CTRL ; 
 int RADIO_2057_TIA_CONFIG_CORE0 ; 
 int RADIO_2057_TIA_CONFIG_CORE1 ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int*,struct chan_info_nphy_radio2057 const**,struct chan_info_nphy_radio205x const**,struct chan_info_nphy_radio2057_rev5 const**,struct chan_info_nphy_2055 const**) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ,struct nphy_sfo_cfg const*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,struct chan_info_nphy_2055 const*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,struct chan_info_nphy_radio205x const*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,struct chan_info_nphy_radio2057 const*,struct chan_info_nphy_radio2057_rev5 const*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 

void FUNC16(struct brcms_phy *pi, u16 chanspec)
{
	int freq;
	const struct chan_info_nphy_radio2057 *t0 = NULL;
	const struct chan_info_nphy_radio205x *t1 = NULL;
	const struct chan_info_nphy_radio2057_rev5 *t2 = NULL;
	const struct chan_info_nphy_2055 *t3 = NULL;

	if (!FUNC10
		    (pi, FUNC1(chanspec), &freq, &t0, &t1, &t2, &t3))
		return;

	FUNC15((struct brcms_phy_pub *) pi, chanspec);

	if (FUNC0(chanspec) != pi->bw)
		FUNC9(pi->sh->physhim, FUNC0(chanspec));

	if (FUNC2(chanspec)) {
		if (FUNC4(chanspec)) {
			FUNC8(pi, 0xa0, BPHY_BAND_SEL_UP20);
			if (FUNC5(pi->pubpi.phy_rev, 7))
				FUNC8(pi, 0x310, PRIM_SEL_UP20);
		} else {
			FUNC6(pi, 0xa0, ~BPHY_BAND_SEL_UP20);
			if (FUNC5(pi->pubpi.phy_rev, 7))
				FUNC6(pi, 0x310,
					    (~PRIM_SEL_UP20 & 0xffff));
		}
	}

	if (FUNC5(pi->pubpi.phy_rev, 3)) {
		if (FUNC5(pi->pubpi.phy_rev, 7)) {

			if ((pi->pubpi.radiorev <= 4)
			    || (pi->pubpi.radiorev == 6)) {
				FUNC7(pi, RADIO_2057_TIA_CONFIG_CORE0,
					      0x2,
					      (FUNC3(chanspec) ? (1 << 1)
					       : 0));
				FUNC7(pi, RADIO_2057_TIA_CONFIG_CORE1,
					      0x2,
					      (FUNC3(chanspec) ? (1 << 1)
					       : 0));
			}

			FUNC14(pi, t0, t2);
			FUNC11(pi, chanspec,
				(pi->pubpi.radiorev == 5) ?
				(const struct nphy_sfo_cfg *)&(t2->PHY_BW1a) :
				(const struct nphy_sfo_cfg *)&(t0->PHY_BW1a));

		} else {

			FUNC7(pi,
				      RADIO_2056_SYN_COM_CTRL | RADIO_2056_SYN,
				      0x4,
				      (FUNC3(chanspec) ? (0x1 << 2) : 0));
			FUNC13(pi, t1);

			FUNC11(pi, chanspec,
				(const struct nphy_sfo_cfg *) &(t1->PHY_BW1a));
		}

	} else {

		FUNC7(pi, RADIO_2055_MASTER_CNTRL1, 0x70,
			      (FUNC3(chanspec) ? (0x02 << 4)
			       : (0x05 << 4)));

		FUNC12(pi, t3);
		FUNC11(pi, chanspec,
					    (const struct nphy_sfo_cfg *)
					     &(t3->PHY_BW1a));
	}

}