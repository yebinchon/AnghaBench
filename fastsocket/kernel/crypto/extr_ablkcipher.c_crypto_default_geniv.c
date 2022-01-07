
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ivsize; } ;
struct TYPE_3__ {scalar_t__ ivsize; } ;
struct crypto_alg {int cra_flags; scalar_t__ cra_blocksize; TYPE_2__ cra_ablkcipher; TYPE_1__ cra_blkcipher; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_TYPE_BLKCIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 char const* skcipher_default_geniv ;

const char *crypto_default_geniv(const struct crypto_alg *alg)
{
 if (((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
      CRYPTO_ALG_TYPE_BLKCIPHER ? alg->cra_blkcipher.ivsize :
      alg->cra_ablkcipher.ivsize) !=
     alg->cra_blocksize)
  return "chainiv";

 return alg->cra_flags & CRYPTO_ALG_ASYNC ?
        "eseqiv" : skcipher_default_geniv;
}
