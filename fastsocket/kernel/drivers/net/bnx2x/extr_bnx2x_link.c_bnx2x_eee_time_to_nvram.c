
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





 int PORT_FEAT_CFG_EEE_POWER_MODE_AGGRESSIVE ;
 int PORT_FEAT_CFG_EEE_POWER_MODE_BALANCED ;
 int PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED ;
 int PORT_FEAT_CFG_EEE_POWER_MODE_LOW_LATENCY ;

__attribute__((used)) static int bnx2x_eee_time_to_nvram(u32 idle_timer, u32 *nvram_mode)
{
 switch (idle_timer) {
 case 129:
  *nvram_mode = PORT_FEAT_CFG_EEE_POWER_MODE_BALANCED;
  break;
 case 130:
  *nvram_mode = PORT_FEAT_CFG_EEE_POWER_MODE_AGGRESSIVE;
  break;
 case 128:
  *nvram_mode = PORT_FEAT_CFG_EEE_POWER_MODE_LOW_LATENCY;
  break;
 default:
  *nvram_mode = PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED;
  break;
 }

 return 0;
}
