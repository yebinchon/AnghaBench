
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcipher_walk {unsigned int blocksize; int flags; } ;
struct blkcipher_desc {int dummy; } ;


 int BLKCIPHER_WALK_PHYS ;
 int blkcipher_walk_first (struct blkcipher_desc*,struct blkcipher_walk*) ;

int blkcipher_walk_virt_block(struct blkcipher_desc *desc,
         struct blkcipher_walk *walk,
         unsigned int blocksize)
{
 walk->flags &= ~BLKCIPHER_WALK_PHYS;
 walk->blocksize = blocksize;
 return blkcipher_walk_first(desc, walk);
}
