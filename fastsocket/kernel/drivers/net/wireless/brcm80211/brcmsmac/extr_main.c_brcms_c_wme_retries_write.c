
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int * wme_retries; int hw; int clk; } ;


 int IEEE80211_NUM_ACS ;
 int M_AC_TXLMT_ADDR (int) ;
 int brcms_b_write_shm (int ,int ,int ) ;

__attribute__((used)) static void brcms_c_wme_retries_write(struct brcms_c_info *wlc)
{
 int ac;


 if (!wlc->clk)
  return;

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
  brcms_b_write_shm(wlc->hw, M_AC_TXLMT_ADDR(ac),
      wlc->wme_retries[ac]);
}
