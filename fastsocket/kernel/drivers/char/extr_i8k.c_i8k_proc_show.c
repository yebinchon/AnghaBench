
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int DMI_PRODUCT_SERIAL ;
 int I8K_FAN_LEFT ;
 int I8K_FAN_RIGHT ;
 int I8K_PROC_FMT ;
 int bios_version ;
 int i8k_get_dmi_data (int ) ;
 int i8k_get_fan_speed (int ) ;
 int i8k_get_fan_status (int ) ;
 int i8k_get_fn_status () ;
 int i8k_get_power_status () ;
 int i8k_get_temp (int ) ;
 scalar_t__ power_status ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int,int,int,int,int,int,int) ;

__attribute__((used)) static int i8k_proc_show(struct seq_file *seq, void *offset)
{
 int fn_key, cpu_temp, ac_power;
 int left_fan, right_fan, left_speed, right_speed;

 cpu_temp = i8k_get_temp(0);
 left_fan = i8k_get_fan_status(I8K_FAN_LEFT);
 right_fan = i8k_get_fan_status(I8K_FAN_RIGHT);
 left_speed = i8k_get_fan_speed(I8K_FAN_LEFT);
 right_speed = i8k_get_fan_speed(I8K_FAN_RIGHT);
 fn_key = i8k_get_fn_status();
 if (power_status)
  ac_power = i8k_get_power_status();
 else
  ac_power = -1;
 return seq_printf(seq, "%s %s %s %d %d %d %d %d %d %d\n",
     I8K_PROC_FMT,
     bios_version,
     i8k_get_dmi_data(DMI_PRODUCT_SERIAL),
     cpu_temp,
     left_fan, right_fan, left_speed, right_speed,
     ac_power, fn_key);
}
