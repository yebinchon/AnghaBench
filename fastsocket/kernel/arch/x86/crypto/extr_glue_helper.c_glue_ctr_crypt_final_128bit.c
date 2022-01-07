
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u128 ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;
typedef int le128 ;
typedef int (* common_glue_ctr_func_t ) (void*,int *,int *,int *) ;
typedef int be128 ;


 int be128_to_le128 (int *,int *) ;
 void* crypto_blkcipher_ctx (int ) ;
 int le128_to_be128 (int *,int *) ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static void glue_ctr_crypt_final_128bit(const common_glue_ctr_func_t fn_ctr,
     struct blkcipher_desc *desc,
     struct blkcipher_walk *walk)
{
 void *ctx = crypto_blkcipher_ctx(desc->tfm);
 u8 *src = (u8 *)walk->src.virt.addr;
 u8 *dst = (u8 *)walk->dst.virt.addr;
 unsigned int nbytes = walk->nbytes;
 le128 ctrblk;
 u128 tmp;

 be128_to_le128(&ctrblk, (be128 *)walk->iv);

 memcpy(&tmp, src, nbytes);
 fn_ctr(ctx, &tmp, &tmp, &ctrblk);
 memcpy(dst, &tmp, nbytes);

 le128_to_be128((be128 *)walk->iv, &ctrblk);
}
