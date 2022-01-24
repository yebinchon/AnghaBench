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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_c_info {int /*<<< orphan*/  hw; } ;
struct brcms_bss_cfg {int dummy; } ;

/* Variables and functions */
 int BCN_TMPL_LEN ; 
 int /*<<< orphan*/  D11_PHY_HDR_LEN ; 
 scalar_t__ FCS_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IEEE80211_STYPE_PROBE_RESP ; 
 int /*<<< orphan*/  M_PRB_RESP_FRM_LEN ; 
 int /*<<< orphan*/  T_PRS_TPL_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcms_bss_cfg*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_c_info*,struct brcms_bss_cfg*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct brcms_c_info *wlc,
			      struct brcms_bss_cfg *cfg,
			      bool suspend)
{
	u16 *prb_resp;
	int len = BCN_TMPL_LEN;

	prb_resp = FUNC8(BCN_TMPL_LEN, GFP_ATOMIC);
	if (!prb_resp)
		return;

	/*
	 * write the probe response to hardware, or save in
	 * the config structure
	 */

	/* create the probe response template */
	FUNC2(wlc, IEEE80211_STYPE_PROBE_RESP, 0,
				 cfg, prb_resp, &len);

	if (suspend)
		FUNC6(wlc);

	/* write the probe response into the template region */
	FUNC1(wlc->hw, T_PRS_TPL_BASE,
				    (len + 3) & ~3, prb_resp);

	/* write the length of the probe response frame (+PLCP/-FCS) */
	FUNC0(wlc->hw, M_PRB_RESP_FRM_LEN, (u16) len);

	/* write the SSID and SSID length */
	FUNC5(wlc, cfg);

	/*
	 * Write PLCP headers and durations for probe response frames
	 * at all rates. Use the actual frame length covered by the
	 * PLCP header for the call to brcms_c_mod_prb_rsp_rate_table()
	 * by subtracting the PLCP len and adding the FCS.
	 */
	len += (-D11_PHY_HDR_LEN + FCS_LEN);
	FUNC4(wlc, (u16) len);

	if (suspend)
		FUNC3(wlc);

	FUNC7(prb_resp);
}