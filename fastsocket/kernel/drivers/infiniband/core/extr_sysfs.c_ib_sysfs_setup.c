
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int ib_class ;

int ib_sysfs_setup(void)
{
 return class_register(&ib_class);
}
