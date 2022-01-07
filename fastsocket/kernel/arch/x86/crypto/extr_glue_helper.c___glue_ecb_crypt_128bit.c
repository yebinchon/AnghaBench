
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct common_glue_ctx {unsigned int num_funcs; TYPE_6__* funcs; int fpu_blocks_limit; } ;
struct TYPE_9__ {int * addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;
struct TYPE_11__ {int (* ecb ) (void*,int *,int *) ;} ;
struct TYPE_12__ {unsigned int const num_blocks; TYPE_5__ fn_u; } ;


 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 void* crypto_blkcipher_ctx (int ) ;
 int glue_fpu_begin (unsigned int const,int ,struct blkcipher_desc*,int,unsigned int) ;
 int glue_fpu_end (int) ;
 int stub1 (void*,int *,int *) ;

__attribute__((used)) static int __glue_ecb_crypt_128bit(const struct common_glue_ctx *gctx,
       struct blkcipher_desc *desc,
       struct blkcipher_walk *walk)
{
 void *ctx = crypto_blkcipher_ctx(desc->tfm);
 const unsigned int bsize = 128 / 8;
 unsigned int nbytes, i, func_bytes;
 bool fpu_enabled = 0;
 int err;

 err = blkcipher_walk_virt(desc, walk);

 while ((nbytes = walk->nbytes)) {
  u8 *wsrc = walk->src.virt.addr;
  u8 *wdst = walk->dst.virt.addr;

  fpu_enabled = glue_fpu_begin(bsize, gctx->fpu_blocks_limit,
          desc, fpu_enabled, nbytes);

  for (i = 0; i < gctx->num_funcs; i++) {
   func_bytes = bsize * gctx->funcs[i].num_blocks;


   if (nbytes >= func_bytes) {
    do {
     gctx->funcs[i].fn_u.ecb(ctx, wdst,
        wsrc);

     wsrc += func_bytes;
     wdst += func_bytes;
     nbytes -= func_bytes;
    } while (nbytes >= func_bytes);

    if (nbytes < bsize)
     goto done;
   }
  }

done:
  err = blkcipher_walk_done(desc, walk, nbytes);
 }

 glue_fpu_end(fpu_enabled);
 return err;
}
