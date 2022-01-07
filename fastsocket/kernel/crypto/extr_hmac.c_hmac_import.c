
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int flags; int tfm; } ;
struct hmac_ctx {int hash; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int crypto_shash_import (struct shash_desc*,void const*) ;
 struct hmac_ctx* hmac_ctx (int ) ;
 struct shash_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int hmac_import(struct shash_desc *pdesc, const void *in)
{
 struct shash_desc *desc = shash_desc_ctx(pdesc);
 struct hmac_ctx *ctx = hmac_ctx(pdesc->tfm);

 desc->tfm = ctx->hash;
 desc->flags = pdesc->flags & CRYPTO_TFM_REQ_MAY_SLEEP;

 return crypto_shash_import(desc, in);
}
