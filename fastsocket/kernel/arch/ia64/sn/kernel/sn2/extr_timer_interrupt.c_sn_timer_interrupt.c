
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hb_count; int* pio_shub_war_cam_addr; scalar_t__ sn_lb_int_war_ticks; int hb_state; } ;


 int HZ ;
 int LED_CPU_HEARTBEAT ;
 scalar_t__ SN_LB_INT_WAR_INTERVAL ;
 scalar_t__ enable_shub_wars_1_1 () ;
 scalar_t__ is_shub1 () ;
 TYPE_1__* pda ;
 int set_led_bits (int,int ) ;
 int sn_lb_int_war_check () ;

void sn_timer_interrupt(int irq, void *dev_id)
{

 if (!pda->hb_count--) {
  pda->hb_count = HZ / 2;
  set_led_bits(pda->hb_state ^=
        LED_CPU_HEARTBEAT, LED_CPU_HEARTBEAT);
 }

 if (is_shub1()) {
  if (enable_shub_wars_1_1()) {

   if (pda->pio_shub_war_cam_addr)
    *pda->pio_shub_war_cam_addr = 0x8000000000000010UL;
  }
  if (pda->sn_lb_int_war_ticks == 0)
   sn_lb_int_war_check();
  pda->sn_lb_int_war_ticks++;
  if (pda->sn_lb_int_war_ticks >= SN_LB_INT_WAR_INTERVAL)
   pda->sn_lb_int_war_ticks = 0;
 }
}
