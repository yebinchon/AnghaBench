
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int VIPER_ICR_R_DIS ;
 int viper_icr_clear_bit (int ) ;

__attribute__((used)) static int viper_cpu_resume(struct sys_device *sysdev)
{
 viper_icr_clear_bit(VIPER_ICR_R_DIS);
 return 0;
}
