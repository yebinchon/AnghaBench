
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int DRV_RMT_INDICATION (struct s_smc*,int) ;
 int LED_Y_OFF ;
 int LED_Y_ON ;
 int led_indication (struct s_smc*,int ) ;

void rmt_indication(struct s_smc *smc, int i)
{

 DRV_RMT_INDICATION(smc,i) ;

        led_indication(smc, i ? LED_Y_OFF : LED_Y_ON) ;
}
