
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int cpumask_t ;


 int xcall_deliver (int,int,int,int const*) ;

__attribute__((used)) static void smp_cross_call_masked(unsigned long *func, u32 ctx, u64 data1, u64 data2, const cpumask_t *mask)
{
 u64 data0 = (((u64)ctx)<<32 | (((u64)func) & 0xffffffff));

 xcall_deliver(data0, data1, data2, mask);
}
