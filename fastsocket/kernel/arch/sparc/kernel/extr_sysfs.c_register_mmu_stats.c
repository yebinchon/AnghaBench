
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int kobj; } ;


 int attr_mmustat_enable ;
 int mmu_stat_group ;
 int mmu_stats_supported ;
 int sysdev_create_file (struct sys_device*,int *) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int register_mmu_stats(struct sys_device *s)
{
 if (!mmu_stats_supported)
  return 0;
 sysdev_create_file(s, &attr_mmustat_enable);
 return sysfs_create_group(&s->kobj, &mmu_stat_group);
}
