
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct talitos_ctx {unsigned int keylen; unsigned int enckeylen; unsigned int authkeylen; int key; } ;
struct rtattr {scalar_t__ rta_type; int rta_len; } ;
struct crypto_authenc_key_param {int enckeylen; } ;
struct crypto_aead {int dummy; } ;


 scalar_t__ CRYPTO_AUTHENC_KEYA_PARAM ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 scalar_t__ RTA_ALIGN (int ) ;
 struct crypto_authenc_key_param* RTA_DATA (struct rtattr*) ;
 int RTA_OK (struct rtattr*,unsigned int) ;
 int RTA_PAYLOAD (struct rtattr*) ;
 unsigned int TALITOS_MAX_KEY_SIZE ;
 unsigned int be32_to_cpu (int ) ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int aead_setkey(struct crypto_aead *authenc,
         const u8 *key, unsigned int keylen)
{
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);
 struct rtattr *rta = (void *)key;
 struct crypto_authenc_key_param *param;
 unsigned int authkeylen;
 unsigned int enckeylen;

 if (!RTA_OK(rta, keylen))
  goto badkey;

 if (rta->rta_type != CRYPTO_AUTHENC_KEYA_PARAM)
  goto badkey;

 if (RTA_PAYLOAD(rta) < sizeof(*param))
  goto badkey;

 param = RTA_DATA(rta);
 enckeylen = be32_to_cpu(param->enckeylen);

 key += RTA_ALIGN(rta->rta_len);
 keylen -= RTA_ALIGN(rta->rta_len);

 if (keylen < enckeylen)
  goto badkey;

 authkeylen = keylen - enckeylen;

 if (keylen > TALITOS_MAX_KEY_SIZE)
  goto badkey;

 memcpy(&ctx->key, key, keylen);

 ctx->keylen = keylen;
 ctx->enckeylen = enckeylen;
 ctx->authkeylen = authkeylen;

 return 0;

badkey:
 crypto_aead_set_flags(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
