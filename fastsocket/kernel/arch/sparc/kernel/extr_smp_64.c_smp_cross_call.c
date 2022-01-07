
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int cpu_online_map ;
 int smp_cross_call_masked (unsigned long*,int ,int ,int ,int *) ;

__attribute__((used)) static void smp_cross_call(unsigned long *func, u32 ctx, u64 data1, u64 data2)
{
 smp_cross_call_masked(func, ctx, data1, data2, &cpu_online_map);
}
