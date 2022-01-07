
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcipher_walk {int blocksize; int flags; } ;
struct blkcipher_desc {int tfm; } ;


 int BLKCIPHER_WALK_PHYS ;
 int blkcipher_walk_first (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_blkcipher_blocksize (int ) ;

int blkcipher_walk_phys(struct blkcipher_desc *desc,
   struct blkcipher_walk *walk)
{
 walk->flags |= BLKCIPHER_WALK_PHYS;
 walk->blocksize = crypto_blkcipher_blocksize(desc->tfm);
 return blkcipher_walk_first(desc, walk);
}
