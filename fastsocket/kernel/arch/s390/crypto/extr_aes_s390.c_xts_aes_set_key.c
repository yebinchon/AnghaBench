
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int key; } ;
struct s390_xts_ctx {unsigned int key_len; TYPE_1__ pcc; int key; int dec; int enc; } ;
struct crypto_tfm {int crt_flags; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int KM_XTS_128_DECRYPT ;
 int KM_XTS_128_ENCRYPT ;
 int KM_XTS_256_DECRYPT ;
 int KM_XTS_256_ENCRYPT ;
 struct s390_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,int) ;
 int xts_fallback_setkey (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int xts_aes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
      unsigned int key_len)
{
 struct s390_xts_ctx *xts_ctx = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;

 switch (key_len) {
 case 32:
  xts_ctx->enc = KM_XTS_128_ENCRYPT;
  xts_ctx->dec = KM_XTS_128_DECRYPT;
  memcpy(xts_ctx->key + 16, in_key, 16);
  memcpy(xts_ctx->pcc.key + 16, in_key + 16, 16);
  break;
 case 48:
  xts_ctx->enc = 0;
  xts_ctx->dec = 0;
  xts_fallback_setkey(tfm, in_key, key_len);
  break;
 case 64:
  xts_ctx->enc = KM_XTS_256_ENCRYPT;
  xts_ctx->dec = KM_XTS_256_DECRYPT;
  memcpy(xts_ctx->key, in_key, 32);
  memcpy(xts_ctx->pcc.key, in_key + 32, 32);
  break;
 default:
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }
 xts_ctx->key_len = key_len;
 return 0;
}
