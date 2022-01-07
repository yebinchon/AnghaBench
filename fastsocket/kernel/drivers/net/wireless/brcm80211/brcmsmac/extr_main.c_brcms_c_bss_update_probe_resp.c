
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_c_info {int hw; } ;
struct brcms_bss_cfg {int dummy; } ;


 int BCN_TMPL_LEN ;
 int D11_PHY_HDR_LEN ;
 scalar_t__ FCS_LEN ;
 int GFP_ATOMIC ;
 int IEEE80211_STYPE_PROBE_RESP ;
 int M_PRB_RESP_FRM_LEN ;
 int T_PRS_TPL_BASE ;
 int brcms_b_write_shm (int ,int ,int ) ;
 int brcms_b_write_template_ram (int ,int ,int,int *) ;
 int brcms_c_bcn_prb_template (struct brcms_c_info*,int ,int ,struct brcms_bss_cfg*,int *,int*) ;
 int brcms_c_enable_mac (struct brcms_c_info*) ;
 int brcms_c_mod_prb_rsp_rate_table (struct brcms_c_info*,int ) ;
 int brcms_c_shm_ssid_upd (struct brcms_c_info*,struct brcms_bss_cfg*) ;
 int brcms_c_suspend_mac_and_wait (struct brcms_c_info*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static void
brcms_c_bss_update_probe_resp(struct brcms_c_info *wlc,
         struct brcms_bss_cfg *cfg,
         bool suspend)
{
 u16 *prb_resp;
 int len = BCN_TMPL_LEN;

 prb_resp = kmalloc(BCN_TMPL_LEN, GFP_ATOMIC);
 if (!prb_resp)
  return;







 brcms_c_bcn_prb_template(wlc, IEEE80211_STYPE_PROBE_RESP, 0,
     cfg, prb_resp, &len);

 if (suspend)
  brcms_c_suspend_mac_and_wait(wlc);


 brcms_b_write_template_ram(wlc->hw, T_PRS_TPL_BASE,
        (len + 3) & ~3, prb_resp);


 brcms_b_write_shm(wlc->hw, M_PRB_RESP_FRM_LEN, (u16) len);


 brcms_c_shm_ssid_upd(wlc, cfg);







 len += (-D11_PHY_HDR_LEN + FCS_LEN);
 brcms_c_mod_prb_rsp_rate_table(wlc, (u16) len);

 if (suspend)
  brcms_c_enable_mac(wlc);

 kfree(prb_resp);
}
