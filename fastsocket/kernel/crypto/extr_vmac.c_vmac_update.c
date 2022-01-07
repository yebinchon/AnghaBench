
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmac_ctx_t {int __vmac_ctx; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;


 struct vmac_ctx_t* crypto_shash_ctx (struct crypto_shash*) ;
 int vhash_update (int const*,unsigned int,int *) ;

__attribute__((used)) static int vmac_update(struct shash_desc *pdesc, const u8 *p,
  unsigned int len)
{
 struct crypto_shash *parent = pdesc->tfm;
 struct vmac_ctx_t *ctx = crypto_shash_ctx(parent);

 vhash_update(p, len, &ctx->__vmac_ctx);

 return 0;
}
