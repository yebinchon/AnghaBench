
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_signature {int dummy; } ;
struct cpu_info_ctx {int err; struct cpu_signature* cpu_sig; } ;


 int collect_cpu_info_local ;
 int smp_call_function_single (int,int ,struct cpu_info_ctx*,int) ;

__attribute__((used)) static int collect_cpu_info_on_target(int cpu, struct cpu_signature *cpu_sig)
{
 struct cpu_info_ctx ctx = { .cpu_sig = cpu_sig, .err = 0 };
 int ret;

 ret = smp_call_function_single(cpu, collect_cpu_info_local, &ctx, 1);
 if (!ret)
  ret = ctx.err;

 return ret;
}
