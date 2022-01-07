
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct shash_desc {int tfm; } ;
struct ghash_desc_ctx {int bytes; int const* buffer; } ;
struct ghash_ctx {int dummy; } ;


 int BUG_ON (int) ;
 int GHASH_BLOCK_SIZE ;
 int KIMD_GHASH ;
 int crypt_s390_kimd (int ,struct ghash_ctx*,int const*,unsigned int) ;
 struct ghash_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int const*,int const*,unsigned int) ;
 unsigned int min (unsigned int,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_update(struct shash_desc *desc,
    const u8 *src, unsigned int srclen)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);
 struct ghash_ctx *ctx = crypto_shash_ctx(desc->tfm);
 unsigned int n;
 u8 *buf = dctx->buffer;
 int ret;

 if (dctx->bytes) {
  u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

  n = min(srclen, dctx->bytes);
  dctx->bytes -= n;
  srclen -= n;

  memcpy(pos, src, n);
  src += n;

  if (!dctx->bytes) {
   ret = crypt_s390_kimd(KIMD_GHASH, ctx, buf,
           GHASH_BLOCK_SIZE);
   BUG_ON(ret != GHASH_BLOCK_SIZE);
  }
 }

 n = srclen & ~(GHASH_BLOCK_SIZE - 1);
 if (n) {
  ret = crypt_s390_kimd(KIMD_GHASH, ctx, src, n);
  BUG_ON(ret != n);
  src += n;
  srclen -= n;
 }

 if (srclen) {
  dctx->bytes = GHASH_BLOCK_SIZE - srclen;
  memcpy(buf, src, srclen);
 }

 return 0;
}
