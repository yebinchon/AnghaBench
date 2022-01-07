
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int id; int kobj; } ;


 int EINVAL ;
 scalar_t__ UCODE_ERROR ;
 int cpu_online (int) ;
 int mc_attr_group ;
 scalar_t__ microcode_init_cpu (int) ;
 int pr_debug (char*,int) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int mc_sysdev_add(struct sys_device *sys_dev)
{
 int err, cpu = sys_dev->id;

 if (!cpu_online(cpu))
  return 0;

 pr_debug("microcode: CPU%d added\n", cpu);

 err = sysfs_create_group(&sys_dev->kobj, &mc_attr_group);
 if (err)
  return err;

 if (microcode_init_cpu(cpu) == UCODE_ERROR)
  err = -EINVAL;

 return err;
}
