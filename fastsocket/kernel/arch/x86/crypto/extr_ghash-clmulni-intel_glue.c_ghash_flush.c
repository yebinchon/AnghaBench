
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_desc_ctx {int bytes; int * buffer; } ;
struct ghash_ctx {int shash; } ;


 int GHASH_BLOCK_SIZE ;
 int clmul_ghash_mul (int *,int *) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;

__attribute__((used)) static void ghash_flush(struct ghash_ctx *ctx, struct ghash_desc_ctx *dctx)
{
 u8 *dst = dctx->buffer;

 if (dctx->bytes) {
  u8 *tmp = dst + (GHASH_BLOCK_SIZE - dctx->bytes);

  while (dctx->bytes--)
   *tmp++ ^= 0;

  kernel_fpu_begin();
  clmul_ghash_mul(dst, &ctx->shash);
  kernel_fpu_end();
 }

 dctx->bytes = 0;
}
