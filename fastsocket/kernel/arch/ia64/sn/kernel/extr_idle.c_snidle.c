
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle_flag; } ;


 int LED_CPU_ACTIVITY ;
 TYPE_1__* pda ;
 int set_led_bits (int ,int ) ;

void snidle(int state)
{
 if (state) {
  if (pda->idle_flag == 0) {



   set_led_bits(0, LED_CPU_ACTIVITY);
  }

  pda->idle_flag = 1;
 } else {



  set_led_bits(LED_CPU_ACTIVITY, LED_CPU_ACTIVITY);

  pda->idle_flag = 0;
 }
}
