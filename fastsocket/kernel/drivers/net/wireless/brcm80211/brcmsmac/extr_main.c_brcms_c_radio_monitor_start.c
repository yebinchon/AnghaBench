
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int radio_monitor; int radio_timer; int hw; } ;


 int BRCMS_PLLREQ_RADIO_MON ;
 int TIMER_INTERVAL_RADIOCHK ;
 int brcms_add_timer (int ,int ,int) ;
 int brcms_b_pllreq (int ,int,int ) ;

__attribute__((used)) static void brcms_c_radio_monitor_start(struct brcms_c_info *wlc)
{

 if (wlc->radio_monitor)
  return;

 wlc->radio_monitor = 1;
 brcms_b_pllreq(wlc->hw, 1, BRCMS_PLLREQ_RADIO_MON);
 brcms_add_timer(wlc->radio_timer, TIMER_INTERVAL_RADIOCHK, 1);
}
