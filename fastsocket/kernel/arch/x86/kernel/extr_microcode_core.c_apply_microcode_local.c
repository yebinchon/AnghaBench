
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apply_microcode_ctx {int err; } ;
struct TYPE_2__ {int (* apply_microcode ) (int ) ;} ;


 TYPE_1__* microcode_ops ;
 int smp_processor_id () ;
 int stub1 (int ) ;

__attribute__((used)) static void apply_microcode_local(void *arg)
{
 struct apply_microcode_ctx *ctx = arg;

 ctx->err = microcode_ops->apply_microcode(smp_processor_id());
}
