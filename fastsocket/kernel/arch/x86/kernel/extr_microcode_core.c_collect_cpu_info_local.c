
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_info_ctx {int cpu_sig; int err; } ;
struct TYPE_2__ {int (* collect_cpu_info ) (int ,int ) ;} ;


 TYPE_1__* microcode_ops ;
 int smp_processor_id () ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void collect_cpu_info_local(void *arg)
{
 struct cpu_info_ctx *ctx = arg;

 ctx->err = microcode_ops->collect_cpu_info(smp_processor_id(),
         ctx->cpu_sig);
}
