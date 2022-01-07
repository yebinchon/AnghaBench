
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dm_target {char* error; } ;
struct crypto_hash {int dummy; } ;
typedef struct crypto_hash crypto_cipher ;
struct TYPE_3__ {struct crypto_hash* hash_tfm; struct crypto_hash* tfm; int * salt; } ;
struct TYPE_4__ {TYPE_1__ essiv; } ;
struct crypt_config {TYPE_2__ iv_gen_private; int tfm; int cipher; } ;


 int CRYPTO_ALG_ASYNC ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_hash*) ;
 int PTR_ERR (struct crypto_hash*) ;
 scalar_t__ crypto_ablkcipher_ivsize (int ) ;
 struct crypto_hash* crypto_alloc_cipher (int ,int ,int ) ;
 struct crypto_hash* crypto_alloc_hash (char const*,int ,int ) ;
 scalar_t__ crypto_cipher_blocksize (struct crypto_hash*) ;
 int crypto_free_cipher (struct crypto_hash*) ;
 int crypto_free_hash (struct crypto_hash*) ;
 int crypto_hash_digestsize (struct crypto_hash*) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;

__attribute__((used)) static int crypt_iv_essiv_ctr(struct crypt_config *cc, struct dm_target *ti,
         const char *opts)
{
 struct crypto_cipher *essiv_tfm = ((void*)0);
 struct crypto_hash *hash_tfm = ((void*)0);
 u8 *salt = ((void*)0);
 int err;

 if (!opts) {
  ti->error = "Digest algorithm missing for ESSIV mode";
  return -EINVAL;
 }


 hash_tfm = crypto_alloc_hash(opts, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(hash_tfm)) {
  ti->error = "Error initializing ESSIV hash";
  err = PTR_ERR(hash_tfm);
  goto bad;
 }

 salt = kzalloc(crypto_hash_digestsize(hash_tfm), GFP_KERNEL);
 if (!salt) {
  ti->error = "Error kmallocing salt storage in ESSIV";
  err = -ENOMEM;
  goto bad;
 }


 essiv_tfm = crypto_alloc_cipher(cc->cipher, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(essiv_tfm)) {
  ti->error = "Error allocating crypto tfm for ESSIV";
  err = PTR_ERR(essiv_tfm);
  goto bad;
 }
 if (crypto_cipher_blocksize(essiv_tfm) !=
     crypto_ablkcipher_ivsize(cc->tfm)) {
  ti->error = "Block size of ESSIV cipher does "
       "not match IV size of block cipher";
  err = -EINVAL;
  goto bad;
 }

 cc->iv_gen_private.essiv.salt = salt;
 cc->iv_gen_private.essiv.tfm = essiv_tfm;
 cc->iv_gen_private.essiv.hash_tfm = hash_tfm;

 return 0;

bad:
 if (essiv_tfm && !IS_ERR(essiv_tfm))
  crypto_free_cipher(essiv_tfm);
 if (hash_tfm && !IS_ERR(hash_tfm))
  crypto_free_hash(hash_tfm);
 kfree(salt);
 return err;
}
