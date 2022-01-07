
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cip; } ;
struct s390_aes_ctx {int key_len; int key; TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int KM_AES_128_ENCRYPT ;
 int KM_AES_192_ENCRYPT ;
 int KM_AES_256_ENCRYPT ;
 int crypt_s390_km (int ,int *,int *,int const*,int ) ;
 int crypto_cipher_encrypt_one (int ,int *,int const*) ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int need_fallback (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void aes_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);

 if (unlikely(need_fallback(sctx->key_len))) {
  crypto_cipher_encrypt_one(sctx->fallback.cip, out, in);
  return;
 }

 switch (sctx->key_len) {
 case 16:
  crypt_s390_km(KM_AES_128_ENCRYPT, &sctx->key, out, in,
         AES_BLOCK_SIZE);
  break;
 case 24:
  crypt_s390_km(KM_AES_192_ENCRYPT, &sctx->key, out, in,
         AES_BLOCK_SIZE);
  break;
 case 32:
  crypt_s390_km(KM_AES_256_ENCRYPT, &sctx->key, out, in,
         AES_BLOCK_SIZE);
  break;
 }
}
