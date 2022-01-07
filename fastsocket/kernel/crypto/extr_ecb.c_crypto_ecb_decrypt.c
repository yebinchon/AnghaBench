
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct crypto_ecb_ctx {struct crypto_cipher* child; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;
struct TYPE_2__ {int cia_decrypt; } ;


 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 struct crypto_ecb_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 TYPE_1__* crypto_cipher_alg (struct crypto_cipher*) ;
 int crypto_ecb_crypt (struct blkcipher_desc*,struct blkcipher_walk*,struct crypto_cipher*,int ) ;

__attribute__((used)) static int crypto_ecb_decrypt(struct blkcipher_desc *desc,
         struct scatterlist *dst, struct scatterlist *src,
         unsigned int nbytes)
{
 struct blkcipher_walk walk;
 struct crypto_blkcipher *tfm = desc->tfm;
 struct crypto_ecb_ctx *ctx = crypto_blkcipher_ctx(tfm);
 struct crypto_cipher *child = ctx->child;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return crypto_ecb_crypt(desc, &walk, child,
    crypto_cipher_alg(child)->cia_decrypt);
}
