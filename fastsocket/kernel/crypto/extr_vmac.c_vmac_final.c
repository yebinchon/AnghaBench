
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmac_t ;
typedef int u8 ;
struct vmac_ctx_t {int __vmac_ctx; } ;
struct vmac_ctx {int dummy; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;


 struct vmac_ctx_t* crypto_shash_ctx (struct crypto_shash*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int vmac (int *,int ,int *,int *,struct vmac_ctx_t*) ;

__attribute__((used)) static int vmac_final(struct shash_desc *pdesc, u8 *out)
{
 struct crypto_shash *parent = pdesc->tfm;
 struct vmac_ctx_t *ctx = crypto_shash_ctx(parent);
 vmac_t mac;
 u8 nonce[16] = {};

 mac = vmac(((void*)0), 0, nonce, ((void*)0), ctx);
 memcpy(out, &mac, sizeof(vmac_t));
 memset(&mac, 0, sizeof(vmac_t));
 memset(&ctx->__vmac_ctx, 0, sizeof(struct vmac_ctx));
 return 0;
}
