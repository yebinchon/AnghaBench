
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int DRV_PCM_STATE_CHANGE (struct s_smc*,int,int) ;
 int led_indication (struct s_smc*,int ) ;

void pcm_state_change(struct s_smc *smc, int plc, int p_state)
{





 DRV_PCM_STATE_CHANGE(smc,plc,p_state) ;

 led_indication(smc,0) ;
}
