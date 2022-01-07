
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtattr {scalar_t__ rta_type; int rta_len; } ;
struct ixp_ctx {unsigned int enckey_len; unsigned int authkey_len; int authkey; int enckey; } ;
struct crypto_authenc_key_param {int enckeylen; } ;
struct crypto_aead {int dummy; } ;


 scalar_t__ CRYPTO_AUTHENC_KEYA_PARAM ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 scalar_t__ RTA_ALIGN (int ) ;
 struct crypto_authenc_key_param* RTA_DATA (struct rtattr*) ;
 int RTA_OK (struct rtattr*,unsigned int) ;
 int RTA_PAYLOAD (struct rtattr*) ;
 int aead_setup (struct crypto_aead*,int ) ;
 unsigned int be32_to_cpu (int ) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct ixp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int aead_setkey(struct crypto_aead *tfm, const u8 *key,
   unsigned int keylen)
{
 struct ixp_ctx *ctx = crypto_aead_ctx(tfm);
 struct rtattr *rta = (struct rtattr *)key;
 struct crypto_authenc_key_param *param;

 if (!RTA_OK(rta, keylen))
  goto badkey;
 if (rta->rta_type != CRYPTO_AUTHENC_KEYA_PARAM)
  goto badkey;
 if (RTA_PAYLOAD(rta) < sizeof(*param))
  goto badkey;

 param = RTA_DATA(rta);
 ctx->enckey_len = be32_to_cpu(param->enckeylen);

 key += RTA_ALIGN(rta->rta_len);
 keylen -= RTA_ALIGN(rta->rta_len);

 if (keylen < ctx->enckey_len)
  goto badkey;

 ctx->authkey_len = keylen - ctx->enckey_len;
 memcpy(ctx->enckey, key + ctx->authkey_len, ctx->enckey_len);
 memcpy(ctx->authkey, key, ctx->authkey_len);

 return aead_setup(tfm, crypto_aead_authsize(tfm));
badkey:
 ctx->enckey_len = 0;
 crypto_aead_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
