
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct salsa20_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct salsa20_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int salsa20_keysetup (struct salsa20_ctx*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_tfm *tfm, const u8 *key,
    unsigned int keysize)
{
 struct salsa20_ctx *ctx = crypto_tfm_ctx(tfm);
 salsa20_keysetup(ctx, key, keysize);
 return 0;
}
