
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * spu_management_ops ;
 int spu_management_ps3_ops ;
 int * spu_priv1_ops ;
 int spu_priv1_ps3_ops ;

void ps3_spu_set_platform(void)
{
 spu_priv1_ops = &spu_priv1_ps3_ops;
 spu_management_ops = &spu_management_ps3_ops;
}
