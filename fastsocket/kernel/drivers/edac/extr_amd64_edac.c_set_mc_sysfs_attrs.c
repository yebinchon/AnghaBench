
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int * mc_driver_sysfs_attributes; } ;
struct TYPE_2__ {int x86; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * amd64_dbg_attrs ;
 int * amd64_inj_attrs ;
 TYPE_1__ boot_cpu_data ;
 int * sysfs_attrs ;
 int terminator ;

__attribute__((used)) static void set_mc_sysfs_attrs(struct mem_ctl_info *mci)
{
 unsigned int i = 0, j = 0;

 for (; i < ARRAY_SIZE(amd64_dbg_attrs); i++)
  sysfs_attrs[i] = amd64_dbg_attrs[i];

 if (boot_cpu_data.x86 >= 0x10)
  for (j = 0; j < ARRAY_SIZE(amd64_inj_attrs); j++, i++)
   sysfs_attrs[i] = amd64_inj_attrs[j];

 sysfs_attrs[i] = terminator;

 mci->mc_driver_sysfs_attributes = sysfs_attrs;
}
