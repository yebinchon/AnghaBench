
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_microcode_ctx {int err; } ;


 int apply_microcode_local ;
 int smp_call_function_single (int,int ,struct apply_microcode_ctx*,int) ;

__attribute__((used)) static int apply_microcode_on_target(int cpu)
{
 struct apply_microcode_ctx ctx = { .err = 0 };
 int ret;

 ret = smp_call_function_single(cpu, apply_microcode_local, &ctx, 1);
 if (!ret)
  ret = ctx.err;

 return ret;
}
