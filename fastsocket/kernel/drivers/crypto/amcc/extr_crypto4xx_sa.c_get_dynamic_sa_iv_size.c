
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iv0; int iv1; int iv2; int iv3; } ;
union dynamic_sa_contents {TYPE_1__ bf; int w; } ;
typedef int u32 ;
struct dynamic_sa_ctl {int sa_contents; } ;
struct crypto4xx_ctx {scalar_t__ direction; scalar_t__ sa_out; scalar_t__ sa_in; } ;


 scalar_t__ DIR_INBOUND ;

u32 get_dynamic_sa_iv_size(struct crypto4xx_ctx *ctx)
{
 union dynamic_sa_contents cts;

 if (ctx->direction == DIR_INBOUND)
  cts.w = ((struct dynamic_sa_ctl *) ctx->sa_in)->sa_contents;
 else
  cts.w = ((struct dynamic_sa_ctl *) ctx->sa_out)->sa_contents;
 return (cts.bf.iv0 + cts.bf.iv1 + cts.bf.iv2 + cts.bf.iv3) * 4;
}
