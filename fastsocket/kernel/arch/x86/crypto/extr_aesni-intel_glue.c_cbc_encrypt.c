
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int flags; int tfm; } ;


 unsigned int AES_BLOCK_MASK ;
 int AES_BLOCK_SIZE ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct crypto_aes_ctx* aes_ctx (int ) ;
 int aesni_cbc_enc (struct crypto_aes_ctx*,int ,int ,unsigned int,int ) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_blkcipher_ctx (int ) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;

__attribute__((used)) static int cbc_encrypt(struct blkcipher_desc *desc,
         struct scatterlist *dst, struct scatterlist *src,
         unsigned int nbytes)
{
 struct crypto_aes_ctx *ctx = aes_ctx(crypto_blkcipher_ctx(desc->tfm));
 struct blkcipher_walk walk;
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);
 desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

 kernel_fpu_begin();
 while ((nbytes = walk.nbytes)) {
  aesni_cbc_enc(ctx, walk.dst.virt.addr, walk.src.virt.addr,
         nbytes & AES_BLOCK_MASK, walk.iv);
  nbytes &= AES_BLOCK_SIZE - 1;
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }
 kernel_fpu_end();

 return err;
}
