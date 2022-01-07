
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_cross_call (int *,int ,int ,int ) ;
 int xcall_new_mmu_context_version ;

void smp_new_mmu_context_version(void)
{
 smp_cross_call(&xcall_new_mmu_context_version, 0, 0, 0);
}
