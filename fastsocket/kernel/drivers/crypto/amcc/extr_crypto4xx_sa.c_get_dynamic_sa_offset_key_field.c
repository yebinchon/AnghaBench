
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union dynamic_sa_contents {int w; } ;
typedef int u32 ;
struct dynamic_sa_ctl {int sa_contents; } ;
struct crypto4xx_ctx {scalar_t__ direction; scalar_t__ sa_out; scalar_t__ sa_in; } ;


 scalar_t__ DIR_INBOUND ;

u32 get_dynamic_sa_offset_key_field(struct crypto4xx_ctx *ctx)
{
 union dynamic_sa_contents cts;

 if (ctx->direction == DIR_INBOUND)
  cts.w = ((struct dynamic_sa_ctl *) ctx->sa_in)->sa_contents;
 else
  cts.w = ((struct dynamic_sa_ctl *) ctx->sa_out)->sa_contents;

 return sizeof(struct dynamic_sa_ctl);
}
