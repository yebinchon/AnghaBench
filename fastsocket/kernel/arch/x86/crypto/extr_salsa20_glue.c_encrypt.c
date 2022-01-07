
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct salsa20_ctx {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int iv; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;


 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt_block (struct blkcipher_desc*,struct blkcipher_walk*,int) ;
 struct salsa20_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 scalar_t__ likely (int) ;
 int salsa20_encrypt_bytes (struct salsa20_ctx*,int ,int ,int) ;
 int salsa20_ivsetup (struct salsa20_ctx*,int ) ;

__attribute__((used)) static int encrypt(struct blkcipher_desc *desc,
     struct scatterlist *dst, struct scatterlist *src,
     unsigned int nbytes)
{
 struct blkcipher_walk walk;
 struct crypto_blkcipher *tfm = desc->tfm;
 struct salsa20_ctx *ctx = crypto_blkcipher_ctx(tfm);
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt_block(desc, &walk, 64);

 salsa20_ivsetup(ctx, walk.iv);

 if (likely(walk.nbytes == nbytes))
 {
  salsa20_encrypt_bytes(ctx, walk.src.virt.addr,
          walk.dst.virt.addr, nbytes);
  return blkcipher_walk_done(desc, &walk, 0);
 }

 while (walk.nbytes >= 64) {
  salsa20_encrypt_bytes(ctx, walk.src.virt.addr,
          walk.dst.virt.addr,
          walk.nbytes - (walk.nbytes % 64));
  err = blkcipher_walk_done(desc, &walk, walk.nbytes % 64);
 }

 if (walk.nbytes) {
  salsa20_encrypt_bytes(ctx, walk.src.virt.addr,
          walk.dst.virt.addr, walk.nbytes);
  err = blkcipher_walk_done(desc, &walk, 0);
 }

 return err;
}
