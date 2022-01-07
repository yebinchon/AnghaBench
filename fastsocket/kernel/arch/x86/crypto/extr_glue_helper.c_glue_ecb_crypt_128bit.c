
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct common_glue_ctx {int dummy; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int dummy; } ;


 int __glue_ecb_crypt_128bit (struct common_glue_ctx const*,struct blkcipher_desc*,struct blkcipher_walk*) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;

int glue_ecb_crypt_128bit(const struct common_glue_ctx *gctx,
     struct blkcipher_desc *desc, struct scatterlist *dst,
     struct scatterlist *src, unsigned int nbytes)
{
 struct blkcipher_walk walk;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return __glue_ecb_crypt_128bit(gctx, desc, &walk);
}
