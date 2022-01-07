
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmac_ctx {scalar_t__ first_block_processed; int * polykey; int * polytmp; } ;



__attribute__((used)) static void vhash_abort(struct vmac_ctx *ctx)
{
 ctx->polytmp[0] = ctx->polykey[0] ;
 ctx->polytmp[1] = ctx->polykey[1] ;
 ctx->first_block_processed = 0;
}
