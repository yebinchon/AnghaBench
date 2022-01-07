
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int __cpu_turbo_on; scalar_t__ turbo_toggle_allowed; } ;


 int do_disable_cpu_turbo ;
 int on_each_cpu (int ,struct ips_driver*,int) ;

__attribute__((used)) static void ips_disable_cpu_turbo(struct ips_driver *ips)
{

 if (!ips->__cpu_turbo_on)
  return;

 if (ips->turbo_toggle_allowed)
  on_each_cpu(do_disable_cpu_turbo, ips, 1);

 ips->__cpu_turbo_on = 0;
}
