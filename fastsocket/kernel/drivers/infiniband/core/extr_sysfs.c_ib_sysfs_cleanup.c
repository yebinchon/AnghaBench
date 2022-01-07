
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int ib_class ;

void ib_sysfs_cleanup(void)
{
 class_unregister(&ib_class);
}
