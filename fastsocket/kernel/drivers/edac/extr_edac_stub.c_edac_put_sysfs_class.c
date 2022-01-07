
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_test (int *) ;
 int edac_class ;
 int edac_class_valid ;
 int sysdev_class_unregister (int *) ;

void edac_put_sysfs_class(void)
{

 if (atomic_dec_and_test(&edac_class_valid))
  sysdev_class_unregister(&edac_class);
}
