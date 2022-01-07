
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int id; int kobj; } ;


 int cpu_online (int) ;
 int mc_attr_group ;
 int microcode_fini_cpu (int) ;
 int pr_debug (char*,int) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int mc_sysdev_remove(struct sys_device *sys_dev)
{
 int cpu = sys_dev->id;

 if (!cpu_online(cpu))
  return 0;

 pr_debug("microcode: CPU%d removed\n", cpu);
 microcode_fini_cpu(cpu);
 sysfs_remove_group(&sys_dev->kobj, &mc_attr_group);
 return 0;
}
