
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int template ;
struct brcms_c_info {int hw; TYPE_1__* pub; } ;
struct TYPE_2__ {int cur_etheraddr; } ;


 int ETH_ALEN ;
 scalar_t__ T_BA_TPL_BASE ;
 int T_RAM_ACCESS_SZ ;
 int brcms_b_write_template_ram (int ,scalar_t__,int,char*) ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int) ;

void brcms_c_ampdu_macaddr_upd(struct brcms_c_info *wlc)
{
 char template[T_RAM_ACCESS_SZ * 2];


 memset(template, 0, sizeof(template));
 memcpy(template, wlc->pub->cur_etheraddr, ETH_ALEN);
 brcms_b_write_template_ram(wlc->hw, (T_BA_TPL_BASE + 16),
      (T_RAM_ACCESS_SZ * 2),
      template);
}
