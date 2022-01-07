
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;
typedef int pm_message_t ;


 int VIPER_ICR_R_DIS ;
 int viper_icr_set_bit (int ) ;

__attribute__((used)) static int viper_cpu_suspend(struct sys_device *sysdev, pm_message_t state)
{
 viper_icr_set_bit(VIPER_ICR_R_DIS);
 return 0;
}
