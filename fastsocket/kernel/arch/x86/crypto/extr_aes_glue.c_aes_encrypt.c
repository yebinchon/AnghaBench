
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int aes_enc_blk (int ,int *,int const*) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void aes_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 aes_enc_blk(crypto_tfm_ctx(tfm), dst, src);
}
