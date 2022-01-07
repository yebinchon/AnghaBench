
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int h; int l; } ;
struct msr_info {TYPE_1__ reg; int msr_no; } ;
typedef int rv ;


 int __rdmsr_on_cpu ;
 int memset (struct msr_info*,int ,int) ;
 int smp_call_function_single (unsigned int,int ,struct msr_info*,int) ;

int rdmsr_on_cpu(unsigned int cpu, u32 msr_no, u32 *l, u32 *h)
{
 int err;
 struct msr_info rv;

 memset(&rv, 0, sizeof(rv));

 rv.msr_no = msr_no;
 err = smp_call_function_single(cpu, __rdmsr_on_cpu, &rv, 1);
 *l = rv.reg.l;
 *h = rv.reg.h;

 return err;
}
