
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct s390_sha_ctx {unsigned int count; int const* buf; int state; int func; } ;


 int BUG_ON (int) ;
 int crypt_s390_kimd (int ,int ,int const*,unsigned int) ;
 unsigned int crypto_shash_blocksize (int ) ;
 int memcpy (int const*,int const*,unsigned int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

int s390_sha_update(struct shash_desc *desc, const u8 *data, unsigned int len)
{
 struct s390_sha_ctx *ctx = shash_desc_ctx(desc);
 unsigned int bsize = crypto_shash_blocksize(desc->tfm);
 unsigned int index;
 int ret;


 index = ctx->count & (bsize - 1);
 ctx->count += len;

 if ((index + len) < bsize)
  goto store;


 if (index) {
  memcpy(ctx->buf + index, data, bsize - index);
  ret = crypt_s390_kimd(ctx->func, ctx->state, ctx->buf, bsize);
  BUG_ON(ret != bsize);
  data += bsize - index;
  len -= bsize - index;
  index = 0;
 }


 if (len >= bsize) {
  ret = crypt_s390_kimd(ctx->func, ctx->state, data,
          len & ~(bsize - 1));
  BUG_ON(ret != (len & ~(bsize - 1)));
  data += ret;
  len -= ret;
 }
store:
 if (len)
  memcpy(ctx->buf + index , data, len);

 return 0;
}
