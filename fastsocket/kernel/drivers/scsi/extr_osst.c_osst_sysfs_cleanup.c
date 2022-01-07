
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_destroy (int ) ;
 int osst_sysfs_class ;

__attribute__((used)) static void osst_sysfs_cleanup(void)
{
 class_destroy(osst_sysfs_class);
}
