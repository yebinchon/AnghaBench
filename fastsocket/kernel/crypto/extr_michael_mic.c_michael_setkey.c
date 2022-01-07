
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct michael_mic_ctx {void* r; void* l; } ;
struct crypto_shash {int dummy; } ;
typedef int __le32 ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct michael_mic_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 void* le32_to_cpu (int const) ;

__attribute__((used)) static int michael_setkey(struct crypto_shash *tfm, const u8 *key,
     unsigned int keylen)
{
 struct michael_mic_ctx *mctx = crypto_shash_ctx(tfm);

 const __le32 *data = (const __le32 *)key;

 if (keylen != 8) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 mctx->l = le32_to_cpu(data[0]);
 mctx->r = le32_to_cpu(data[1]);
 return 0;
}
