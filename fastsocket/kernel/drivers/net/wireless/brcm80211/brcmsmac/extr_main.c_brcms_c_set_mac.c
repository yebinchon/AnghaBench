
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int dummy; } ;
struct brcms_bss_cfg {int cur_etheraddr; struct brcms_c_info* wlc; } ;


 int RCM_MAC_OFFSET ;
 int brcms_c_ampdu_macaddr_upd (struct brcms_c_info*) ;
 int brcms_c_set_addrmatch (struct brcms_c_info*,int ,int ) ;

__attribute__((used)) static int brcms_c_set_mac(struct brcms_bss_cfg *bsscfg)
{
 int err = 0;
 struct brcms_c_info *wlc = bsscfg->wlc;


 brcms_c_set_addrmatch(wlc, RCM_MAC_OFFSET, bsscfg->cur_etheraddr);

 brcms_c_ampdu_macaddr_upd(wlc);

 return err;
}
