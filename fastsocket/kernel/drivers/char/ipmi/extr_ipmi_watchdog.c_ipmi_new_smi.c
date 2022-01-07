
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ipmi_register_watchdog (int) ;

__attribute__((used)) static void ipmi_new_smi(int if_num, struct device *device)
{
 ipmi_register_watchdog(if_num);
}
