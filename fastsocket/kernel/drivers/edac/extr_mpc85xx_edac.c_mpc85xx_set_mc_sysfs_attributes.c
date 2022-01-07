
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mc_driver_sysfs_attributes; } ;


 int mpc85xx_mc_sysfs_attributes ;

__attribute__((used)) static void mpc85xx_set_mc_sysfs_attributes(struct mem_ctl_info *mci)
{
 mci->mc_driver_sysfs_attributes = mpc85xx_mc_sysfs_attributes;
}
