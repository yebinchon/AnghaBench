
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EEE_MODE_NVRAM_AGGRESSIVE_TIME ;
 int EEE_MODE_NVRAM_BALANCED_TIME ;
 int EEE_MODE_NVRAM_LATENCY_TIME ;




__attribute__((used)) static int bnx2x_eee_nvram_to_time(u32 nvram_mode, u32 *idle_timer)
{
 switch (nvram_mode) {
 case 129:
  *idle_timer = EEE_MODE_NVRAM_BALANCED_TIME;
  break;
 case 130:
  *idle_timer = EEE_MODE_NVRAM_AGGRESSIVE_TIME;
  break;
 case 128:
  *idle_timer = EEE_MODE_NVRAM_LATENCY_TIME;
  break;
 default:
  *idle_timer = 0;
  break;
 }

 return 0;
}
