
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {char* nonce; } ;
struct TYPE_4__ {TYPE_1__ gcm; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct crypto_aead {int base; } ;


 int EINVAL ;
 struct nx_crypto_ctx* crypto_tfm_ctx (int *) ;
 int gcm_aes_nx_set_key (struct crypto_aead*,int const*,unsigned int) ;
 int memcpy (char*,int const*,int) ;

__attribute__((used)) static int gcm4106_aes_nx_set_key(struct crypto_aead *tfm,
      const u8 *in_key,
      unsigned int key_len)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(&tfm->base);
 char *nonce = nx_ctx->priv.gcm.nonce;
 int rc;

 if (key_len < 4)
  return -EINVAL;

 key_len -= 4;

 rc = gcm_aes_nx_set_key(tfm, in_key, key_len);
 if (rc)
  goto out;

 memcpy(nonce, in_key + key_len, 4);
out:
 return rc;
}
