
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {TYPE_2__* spu; } ;
struct TYPE_4__ {TYPE_1__* problem; } ;
struct TYPE_3__ {int signal_notify2; } ;


 int out_be32 (int *,int ) ;

__attribute__((used)) static void spu_hw_signal2_write(struct spu_context *ctx, u32 data)
{
 out_be32(&ctx->spu->problem->signal_notify2, data);
}
