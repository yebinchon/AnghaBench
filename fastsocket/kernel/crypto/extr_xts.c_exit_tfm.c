
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int tweak; int child; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_cipher (int ) ;
 struct priv* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void exit_tfm(struct crypto_tfm *tfm)
{
 struct priv *ctx = crypto_tfm_ctx(tfm);
 crypto_free_cipher(ctx->child);
 crypto_free_cipher(ctx->tweak);
}
