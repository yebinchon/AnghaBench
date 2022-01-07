
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct blkcipher_walk {unsigned int nbytes; } ;
struct blkcipher_desc {int dummy; } ;
typedef int common_glue_func_t ;


 unsigned int __glue_cbc_encrypt_128bit (int const,struct blkcipher_desc*,struct blkcipher_walk*) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;

int glue_cbc_encrypt_128bit(const common_glue_func_t fn,
       struct blkcipher_desc *desc,
       struct scatterlist *dst,
       struct scatterlist *src, unsigned int nbytes)
{
 struct blkcipher_walk walk;
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);

 while ((nbytes = walk.nbytes)) {
  nbytes = __glue_cbc_encrypt_128bit(fn, desc, &walk);
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }

 return err;
}
