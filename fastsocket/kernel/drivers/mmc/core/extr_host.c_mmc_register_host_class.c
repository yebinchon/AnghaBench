
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int mmc_host_class ;

int mmc_register_host_class(void)
{
 return class_register(&mmc_host_class);
}
