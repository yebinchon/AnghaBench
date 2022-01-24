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
typedef  int val ;
typedef  int u32 ;
typedef  int u16 ;
struct brcms_phy_lcnphy {scalar_t__ lcnphy_iqcal_swp_dis; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {int /*<<< orphan*/  d11core; TYPE_1__ u; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  psm_corectlsts ; 
 int /*<<< orphan*/  psm_phy_hdr_param ; 
 int FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  smpl_clct_curptr ; 
 int /*<<< orphan*/  smpl_clct_stpptr ; 
 int /*<<< orphan*/  smpl_clct_strptr ; 
 int /*<<< orphan*/  tplatewrdata ; 
 int /*<<< orphan*/  tplatewrptr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct brcms_phy *pi, int clip_detect_algo, u16 thresh,
		    s16 *ptr, int mode)
{
	u32 curval1, curval2, stpptr, curptr, strptr, val;
	u16 sslpnCalibClkEnCtrl, timer;
	u16 old_sslpnCalibClkEnCtrl;
	s16 imag, real;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	timer = 0;
	old_sslpnCalibClkEnCtrl = FUNC5(pi, 0x6da);

	curval1 = FUNC1(pi->d11core, FUNC0(psm_corectlsts));
	ptr[130] = 0;
	FUNC3(pi->d11core, FUNC0(psm_corectlsts),
		     ((1 << 6) | curval1));

	FUNC3(pi->d11core, FUNC0(smpl_clct_strptr), 0x7E00);
	FUNC3(pi->d11core, FUNC0(smpl_clct_stpptr), 0x8000);
	FUNC6(20);
	curval2 = FUNC1(pi->d11core, FUNC0(psm_phy_hdr_param));
	FUNC3(pi->d11core, FUNC0(psm_phy_hdr_param),
		     curval2 | 0x30);

	FUNC7(pi, 0x555, 0x0);
	FUNC7(pi, 0x5a6, 0x5);

	FUNC7(pi, 0x5a2, (u16) (mode | mode << 6));
	FUNC7(pi, 0x5cf, 3);
	FUNC7(pi, 0x5a5, 0x3);
	FUNC7(pi, 0x583, 0x0);
	FUNC7(pi, 0x584, 0x0);
	FUNC7(pi, 0x585, 0x0fff);
	FUNC7(pi, 0x586, 0x0000);

	FUNC7(pi, 0x580, 0x4501);

	sslpnCalibClkEnCtrl = FUNC5(pi, 0x6da);
	FUNC7(pi, 0x6da, (u32) (sslpnCalibClkEnCtrl | 0x2008));
	stpptr = FUNC1(pi->d11core, FUNC0(smpl_clct_stpptr));
	curptr = FUNC1(pi->d11core, FUNC0(smpl_clct_curptr));
	do {
		FUNC6(10);
		curptr = FUNC1(pi->d11core, FUNC0(smpl_clct_curptr));
		timer++;
	} while ((curptr != stpptr) && (timer < 500));

	FUNC3(pi->d11core, FUNC0(psm_phy_hdr_param), 0x2);
	strptr = 0x7E00;
	FUNC4(pi->d11core, FUNC0(tplatewrptr), strptr);
	while (strptr < 0x8000) {
		val = FUNC2(pi->d11core, FUNC0(tplatewrdata));
		imag = ((val >> 16) & 0x3ff);
		real = ((val) & 0x3ff);
		if (imag > 511)
			imag -= 1024;

		if (real > 511)
			real -= 1024;

		if (pi_lcn->lcnphy_iqcal_swp_dis)
			ptr[(strptr - 0x7E00) / 4] = real;
		else
			ptr[(strptr - 0x7E00) / 4] = imag;

		if (clip_detect_algo) {
			if (imag > thresh || imag < -thresh) {
				strptr = 0x8000;
				ptr[130] = 1;
			}
		}

		strptr += 4;
	}

	FUNC7(pi, 0x6da, old_sslpnCalibClkEnCtrl);
	FUNC3(pi->d11core, FUNC0(psm_phy_hdr_param), curval2);
	FUNC3(pi->d11core, FUNC0(psm_corectlsts), curval1);
}