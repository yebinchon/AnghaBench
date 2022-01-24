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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_corenum; } ;
struct brcms_phy {TYPE_2__* sh; TYPE_1__ pubpi; } ;
typedef  scalar_t__ s8 ;
typedef  int s32 ;
struct TYPE_4__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int D11_CURCHANNEL_MAX ; 
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 int /*<<< orphan*/  M_JSSI_0 ; 
 int /*<<< orphan*/  M_JSSI_AUX ; 
 int /*<<< orphan*/  M_PWRIND_MAP0 ; 
 int /*<<< orphan*/  M_PWRIND_MAP1 ; 
 int /*<<< orphan*/  M_PWRIND_MAP2 ; 
 int /*<<< orphan*/  M_PWRIND_MAP3 ; 
 scalar_t__ PHY_NOISE_FIXED_VAL_LCNPHY ; 
 scalar_t__ PHY_NOISE_FIXED_VAL_NPHY ; 
 int FUNC2 (struct brcms_phy*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,scalar_t__) ; 
 scalar_t__ FUNC6 (struct brcms_phy*) ; 

void FUNC7(struct brcms_phy_pub *pih)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;
	u16 jssi_aux;
	u8 channel = 0;
	s8 noise_dbm = PHY_NOISE_FIXED_VAL_NPHY;

	if (FUNC0(pi)) {
		u32 cmplx_pwr, cmplx_pwr0, cmplx_pwr1;
		u16 lo, hi;
		s32 pwr_offset_dB, gain_dB;
		u16 status_0, status_1;

		jssi_aux = FUNC3(pi->sh->physhim, M_JSSI_AUX);
		channel = jssi_aux & D11_CURCHANNEL_MAX;

		lo = FUNC3(pi->sh->physhim, M_PWRIND_MAP0);
		hi = FUNC3(pi->sh->physhim, M_PWRIND_MAP1);
		cmplx_pwr0 = (hi << 16) + lo;

		lo = FUNC3(pi->sh->physhim, M_PWRIND_MAP2);
		hi = FUNC3(pi->sh->physhim, M_PWRIND_MAP3);
		cmplx_pwr1 = (hi << 16) + lo;
		cmplx_pwr = (cmplx_pwr0 + cmplx_pwr1) >> 6;

		status_0 = 0x44;
		status_1 = FUNC3(pi->sh->physhim, M_JSSI_0);
		if ((cmplx_pwr > 0 && cmplx_pwr < 500)
		    && ((status_1 & 0xc000) == 0x4000)) {

			FUNC4(&cmplx_pwr, &noise_dbm,
					   pi->pubpi.phy_corenum);
			pwr_offset_dB = (FUNC2(pi, 0x434) & 0xFF);
			if (pwr_offset_dB > 127)
				pwr_offset_dB -= 256;

			noise_dbm += (s8) (pwr_offset_dB - 30);

			gain_dB = (status_0 & 0x1ff);
			noise_dbm -= (s8) (gain_dB);
		} else {
			noise_dbm = PHY_NOISE_FIXED_VAL_LCNPHY;
		}
	} else if (FUNC1(pi)) {

		jssi_aux = FUNC3(pi->sh->physhim, M_JSSI_AUX);
		channel = jssi_aux & D11_CURCHANNEL_MAX;

		noise_dbm = FUNC6(pi);
	}

	FUNC5(pi, channel, noise_dbm);

}