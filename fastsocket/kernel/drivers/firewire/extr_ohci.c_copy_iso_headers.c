
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ header_size; } ;
struct iso_context {int header_length; TYPE_1__ base; scalar_t__ header; } ;


 scalar_t__ PAGE_SIZE ;
 int __swab32 (int ) ;
 int memcpy (scalar_t__,void*,int) ;

__attribute__((used)) static void copy_iso_headers(struct iso_context *ctx, void *p)
{
 int i = ctx->header_length;

 if (i + ctx->base.header_size > PAGE_SIZE)
  return;







 if (ctx->base.header_size > 0)
  *(u32 *) (ctx->header + i) = __swab32(*(u32 *) (p + 4));
 if (ctx->base.header_size > 4)
  *(u32 *) (ctx->header + i + 4) = __swab32(*(u32 *) p);
 if (ctx->base.header_size > 8)
  memcpy(ctx->header + i + 8, p + 8, ctx->base.header_size - 8);
 ctx->header_length += ctx->base.header_size;
}
