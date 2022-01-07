
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_desc_ctx {scalar_t__ bytes; int * buffer; } ;
struct ghash_ctx {int dummy; } ;


 int BUG_ON (int) ;
 int GHASH_BLOCK_SIZE ;
 int KIMD_GHASH ;
 int crypt_s390_kimd (int ,struct ghash_ctx*,int *,int) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static void ghash_flush(struct ghash_ctx *ctx, struct ghash_desc_ctx *dctx)
{
 u8 *buf = dctx->buffer;
 int ret;

 if (dctx->bytes) {
  u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

  memset(pos, 0, dctx->bytes);

  ret = crypt_s390_kimd(KIMD_GHASH, ctx, buf, GHASH_BLOCK_SIZE);
  BUG_ON(ret != GHASH_BLOCK_SIZE);
 }

 dctx->bytes = 0;
}
