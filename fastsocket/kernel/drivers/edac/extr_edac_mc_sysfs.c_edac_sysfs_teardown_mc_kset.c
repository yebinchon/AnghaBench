
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edac_put_sysfs_class () ;
 int kset_unregister (int ) ;
 int mc_kset ;

void edac_sysfs_teardown_mc_kset(void)
{
 kset_unregister(mc_kset);
 edac_put_sysfs_class();
}
