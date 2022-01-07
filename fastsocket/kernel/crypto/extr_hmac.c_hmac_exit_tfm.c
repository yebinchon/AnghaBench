
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_ctx {int hash; } ;
struct crypto_tfm {int dummy; } ;


 int __crypto_shash_cast (struct crypto_tfm*) ;
 int crypto_free_shash (int ) ;
 struct hmac_ctx* hmac_ctx (int ) ;

__attribute__((used)) static void hmac_exit_tfm(struct crypto_tfm *tfm)
{
 struct hmac_ctx *ctx = hmac_ctx(__crypto_shash_cast(tfm));
 crypto_free_shash(ctx->hash);
}
