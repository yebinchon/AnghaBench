
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_cbc_ctx {struct crypto_cipher* child; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;


 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 struct crypto_cbc_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 unsigned int crypto_cbc_encrypt_inplace (struct blkcipher_desc*,struct blkcipher_walk*,struct crypto_cipher*) ;
 unsigned int crypto_cbc_encrypt_segment (struct blkcipher_desc*,struct blkcipher_walk*,struct crypto_cipher*) ;

__attribute__((used)) static int crypto_cbc_encrypt(struct blkcipher_desc *desc,
         struct scatterlist *dst, struct scatterlist *src,
         unsigned int nbytes)
{
 struct blkcipher_walk walk;
 struct crypto_blkcipher *tfm = desc->tfm;
 struct crypto_cbc_ctx *ctx = crypto_blkcipher_ctx(tfm);
 struct crypto_cipher *child = ctx->child;
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);

 while ((nbytes = walk.nbytes)) {
  if (walk.src.virt.addr == walk.dst.virt.addr)
   nbytes = crypto_cbc_encrypt_inplace(desc, &walk, child);
  else
   nbytes = crypto_cbc_encrypt_segment(desc, &walk, child);
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }

 return err;
}
