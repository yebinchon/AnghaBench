
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct common_glue_ctx {int num_funcs; TYPE_2__* funcs; int fpu_blocks_limit; } ;
struct blkcipher_walk {unsigned int nbytes; } ;
struct blkcipher_desc {int dummy; } ;
struct TYPE_3__ {int ctr; } ;
struct TYPE_4__ {TYPE_1__ fn_u; } ;


 unsigned int __glue_ctr_crypt_128bit (struct common_glue_ctx const*,struct blkcipher_desc*,struct blkcipher_walk*) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt_block (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int const) ;
 int glue_ctr_crypt_final_128bit (int ,struct blkcipher_desc*,struct blkcipher_walk*) ;
 int glue_fpu_begin (unsigned int const,int ,struct blkcipher_desc*,int,unsigned int) ;
 int glue_fpu_end (int) ;

int glue_ctr_crypt_128bit(const struct common_glue_ctx *gctx,
     struct blkcipher_desc *desc, struct scatterlist *dst,
     struct scatterlist *src, unsigned int nbytes)
{
 const unsigned int bsize = 128 / 8;
 bool fpu_enabled = 0;
 struct blkcipher_walk walk;
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt_block(desc, &walk, bsize);

 while ((nbytes = walk.nbytes) >= bsize) {
  fpu_enabled = glue_fpu_begin(bsize, gctx->fpu_blocks_limit,
          desc, fpu_enabled, nbytes);
  nbytes = __glue_ctr_crypt_128bit(gctx, desc, &walk);
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }

 glue_fpu_end(fpu_enabled);

 if (walk.nbytes) {
  glue_ctr_crypt_final_128bit(
   gctx->funcs[gctx->num_funcs - 1].fn_u.ctr, desc, &walk);
  err = blkcipher_walk_done(desc, &walk, 0);
 }

 return err;
}
