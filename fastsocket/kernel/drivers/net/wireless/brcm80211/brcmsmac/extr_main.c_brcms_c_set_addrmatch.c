
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcms_c_info {TYPE_1__* bsscfg; int hw; } ;
struct TYPE_2__ {int BSSID; } ;


 int ETH_ALEN ;
 int RCM_BSSID_OFFSET ;
 int brcms_b_set_addrmatch (int ,int,int const*) ;
 int memcpy (int ,int const*,int ) ;

void
brcms_c_set_addrmatch(struct brcms_c_info *wlc, int match_reg_offset,
    const u8 *addr)
{
 brcms_b_set_addrmatch(wlc->hw, match_reg_offset, addr);
 if (match_reg_offset == RCM_BSSID_OFFSET)
  memcpy(wlc->bsscfg->BSSID, addr, ETH_ALEN);
}
