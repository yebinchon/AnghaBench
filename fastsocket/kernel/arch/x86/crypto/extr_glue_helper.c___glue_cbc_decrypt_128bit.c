
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


typedef int u128 ;
struct common_glue_ctx {unsigned int num_funcs; TYPE_6__* funcs; } ;
struct TYPE_9__ {scalar_t__ addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;
struct TYPE_11__ {int (* cbc ) (void*,int *,int *) ;} ;
struct TYPE_12__ {unsigned int num_blocks; TYPE_5__ fn_u; } ;


 void* crypto_blkcipher_ctx (int ) ;
 int stub1 (void*,int *,int *) ;
 int u128_xor (int *,int *,int *) ;

__attribute__((used)) static unsigned int
__glue_cbc_decrypt_128bit(const struct common_glue_ctx *gctx,
     struct blkcipher_desc *desc,
     struct blkcipher_walk *walk)
{
 void *ctx = crypto_blkcipher_ctx(desc->tfm);
 const unsigned int bsize = 128 / 8;
 unsigned int nbytes = walk->nbytes;
 u128 *src = (u128 *)walk->src.virt.addr;
 u128 *dst = (u128 *)walk->dst.virt.addr;
 u128 last_iv;
 unsigned int num_blocks, func_bytes;
 unsigned int i;


 src += nbytes / bsize - 1;
 dst += nbytes / bsize - 1;

 last_iv = *src;

 for (i = 0; i < gctx->num_funcs; i++) {
  num_blocks = gctx->funcs[i].num_blocks;
  func_bytes = bsize * num_blocks;


  if (nbytes >= func_bytes) {
   do {
    nbytes -= func_bytes - bsize;
    src -= num_blocks - 1;
    dst -= num_blocks - 1;

    gctx->funcs[i].fn_u.cbc(ctx, dst, src);

    nbytes -= bsize;
    if (nbytes < bsize)
     goto done;

    u128_xor(dst, dst, src - 1);
    src -= 1;
    dst -= 1;
   } while (nbytes >= func_bytes);

   if (nbytes < bsize)
    goto done;
  }
 }

done:
 u128_xor(dst, dst, (u128 *)walk->iv);
 *(u128 *)walk->iv = last_iv;

 return nbytes;
}
