
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int radio_monitor; int radio_timer; int hw; } ;


 int BRCMS_PLLREQ_RADIO_MON ;
 int brcms_b_pllreq (int ,int,int ) ;
 int brcms_del_timer (int ) ;

__attribute__((used)) static bool brcms_c_radio_monitor_stop(struct brcms_c_info *wlc)
{
 if (!wlc->radio_monitor)
  return 1;

 wlc->radio_monitor = 0;
 brcms_b_pllreq(wlc->hw, 0, BRCMS_PLLREQ_RADIO_MON);
 return brcms_del_timer(wlc->radio_timer);
}
