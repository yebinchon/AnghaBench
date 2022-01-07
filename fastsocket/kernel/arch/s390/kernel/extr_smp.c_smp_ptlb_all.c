
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_each_cpu (int ,int *,int) ;
 int smp_ptlb_callback ;

void smp_ptlb_all(void)
{
 on_each_cpu(smp_ptlb_callback, ((void*)0), 1);
}
