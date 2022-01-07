
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int STEP ;
 int VIPER_PSU_CLK_GPIO ;
 int VIPER_PSU_DATA_GPIO ;
 int VIPER_PSU_nCS_LD_GPIO ;
 unsigned int current_voltage_divisor ;
 int gpio_set_value (int ,int) ;
 int pr_debug (char*,char const*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void viper_set_core_cpu_voltage(unsigned long khz, int force)
{
 int i = 0;
 unsigned int divisor = 0;
 const char *v;

 if (khz < 200000) {
  v = "1.0"; divisor = 0xfff;
 } else if (khz < 300000) {
  v = "1.1"; divisor = 0xde5;
 } else {
  v = "1.3"; divisor = 0x325;
 }

 pr_debug("viper: setting CPU core voltage to %sV at %d.%03dMHz\n",
   v, (int)khz / 1000, (int)khz % 1000);


 do {
  int step;

  if (force)
   step = divisor;
  else if (current_voltage_divisor < divisor - 0x100)
   step = current_voltage_divisor + 0x100;
  else if (current_voltage_divisor > divisor + 0x100)
   step = current_voltage_divisor - 0x100;
  else
   step = divisor;
  force = 0;

  gpio_set_value(VIPER_PSU_CLK_GPIO, 0);
  gpio_set_value(VIPER_PSU_nCS_LD_GPIO, 0);

  for (i = 1 << 11 ; i > 0 ; i >>= 1) {
   udelay(1);

   gpio_set_value(VIPER_PSU_DATA_GPIO, step & i);
   udelay(1);

   gpio_set_value(VIPER_PSU_CLK_GPIO, 1);
   udelay(1);

   gpio_set_value(VIPER_PSU_CLK_GPIO, 0);
  }
  udelay(1);

  gpio_set_value(VIPER_PSU_nCS_LD_GPIO, 1);
  udelay(1);

  gpio_set_value(VIPER_PSU_nCS_LD_GPIO, 0);

  current_voltage_divisor = step;
 } while (current_voltage_divisor != divisor);
}
