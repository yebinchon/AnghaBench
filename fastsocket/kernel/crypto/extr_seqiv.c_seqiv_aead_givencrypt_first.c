
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqiv_ctx {int lock; int salt; } ;
struct crypto_aead {int dummy; } ;
struct aead_givcrypt_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ givencrypt; } ;


 struct crypto_aead* aead_givcrypt_reqtfm (struct aead_givcrypt_request*) ;
 TYPE_1__* crypto_aead_crt (struct crypto_aead*) ;
 struct seqiv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 int crypto_default_rng ;
 int crypto_rng_get_bytes (int ,int ,int ) ;
 int seqiv_aead_givencrypt (struct aead_givcrypt_request*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int seqiv_aead_givencrypt_first(struct aead_givcrypt_request *req)
{
 struct crypto_aead *geniv = aead_givcrypt_reqtfm(req);
 struct seqiv_ctx *ctx = crypto_aead_ctx(geniv);
 int err = 0;

 spin_lock_bh(&ctx->lock);
 if (crypto_aead_crt(geniv)->givencrypt != seqiv_aead_givencrypt_first)
  goto unlock;

 crypto_aead_crt(geniv)->givencrypt = seqiv_aead_givencrypt;
 err = crypto_rng_get_bytes(crypto_default_rng, ctx->salt,
       crypto_aead_ivsize(geniv));

unlock:
 spin_unlock_bh(&ctx->lock);

 if (err)
  return err;

 return seqiv_aead_givencrypt(req);
}
