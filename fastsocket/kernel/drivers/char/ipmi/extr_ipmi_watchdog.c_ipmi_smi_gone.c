
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_unregister_watchdog (int) ;

__attribute__((used)) static void ipmi_smi_gone(int if_num)
{
 ipmi_unregister_watchdog(if_num);
}
