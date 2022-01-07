
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pmf_args {int count; TYPE_1__* u; } ;
struct TYPE_2__ {scalar_t__* p; } ;


 int CPUFREQ_HIGH ;
 int CPUFREQ_LOW ;
 int pfunc_cpu_getfreq ;
 int pmf_call_one (int ,struct pmf_args*) ;

__attribute__((used)) static int g5_pfunc_query_freq(void)
{
 struct pmf_args args;
 u32 val = 0;

 args.count = 1;
 args.u[0].p = &val;
 pmf_call_one(pfunc_cpu_getfreq, &args);
 return val ? CPUFREQ_HIGH : CPUFREQ_LOW;
}
