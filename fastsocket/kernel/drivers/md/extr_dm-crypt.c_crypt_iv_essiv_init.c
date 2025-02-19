
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct iv_essiv_private {int hash_tfm; int salt; int tfm; } ;
struct hash_desc {int flags; int tfm; } ;
struct TYPE_2__ {struct iv_essiv_private essiv; } ;
struct crypt_config {int key_size; int key; TYPE_1__ iv_gen_private; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int crypto_cipher_setkey (int ,int ,int ) ;
 int crypto_hash_digest (struct hash_desc*,struct scatterlist*,int ,int ) ;
 int crypto_hash_digestsize (int ) ;
 int sg_init_one (struct scatterlist*,int ,int ) ;

__attribute__((used)) static int crypt_iv_essiv_init(struct crypt_config *cc)
{
 struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;
 struct hash_desc desc;
 struct scatterlist sg;
 int err;

 sg_init_one(&sg, cc->key, cc->key_size);
 desc.tfm = essiv->hash_tfm;
 desc.flags = CRYPTO_TFM_REQ_MAY_SLEEP;

 err = crypto_hash_digest(&desc, &sg, cc->key_size, essiv->salt);
 if (err)
  return err;

 return crypto_cipher_setkey(essiv->tfm, essiv->salt,
        crypto_hash_digestsize(essiv->hash_tfm));
}
