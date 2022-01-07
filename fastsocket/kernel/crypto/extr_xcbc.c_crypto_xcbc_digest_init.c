
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xcbc_desc_ctx {scalar_t__ len; int * ctx; } ;
struct shash_desc {int tfm; } ;


 int * PTR_ALIGN (int *,unsigned long) ;
 unsigned long crypto_shash_alignmask (int ) ;
 int crypto_shash_blocksize (int ) ;
 int memset (int *,int ,int) ;
 struct xcbc_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crypto_xcbc_digest_init(struct shash_desc *pdesc)
{
 unsigned long alignmask = crypto_shash_alignmask(pdesc->tfm);
 struct xcbc_desc_ctx *ctx = shash_desc_ctx(pdesc);
 int bs = crypto_shash_blocksize(pdesc->tfm);
 u8 *prev = PTR_ALIGN(&ctx->ctx[0], alignmask + 1) + bs;

 ctx->len = 0;
 memset(prev, 0, bs);

 return 0;
}
