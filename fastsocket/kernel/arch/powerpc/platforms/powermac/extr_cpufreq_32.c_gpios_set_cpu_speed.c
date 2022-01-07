
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMAC_FTR_READ_GPIO ;
 int PMAC_FTR_WRITE_GPIO ;
 int debug_calc_bogomips () ;
 int frequency_gpio ;
 int local_delay (int) ;
 int pmac_call_feature (int ,int *,int ,int) ;
 int slew_done_gpio ;
 int udelay (int) ;
 int voltage_gpio ;

__attribute__((used)) static int gpios_set_cpu_speed(int low_speed)
{
 int gpio, timeout = 0;


 if (low_speed == 0) {
  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), voltage_gpio, 0x05);

  local_delay(10);
 }


 gpio = pmac_call_feature(PMAC_FTR_READ_GPIO, ((void*)0), frequency_gpio, 0);
 if (low_speed == ((gpio & 0x01) == 0))
  goto skip;

 pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), frequency_gpio,
     low_speed ? 0x04 : 0x05);
 udelay(200);
 do {
  if (++timeout > 100)
   break;
  local_delay(1);
  gpio = pmac_call_feature(PMAC_FTR_READ_GPIO, ((void*)0), slew_done_gpio, 0);
 } while((gpio & 0x02) == 0);
 skip:

 if (low_speed == 1) {
  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), voltage_gpio, 0x04);

  local_delay(10);
 }





 return 0;
}
