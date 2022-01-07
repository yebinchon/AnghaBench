
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct blkcipher_walk {int flags; int out; int in; int page; TYPE_2__ dst; } ;


 int BLKCIPHER_WALK_COPY ;
 int BLKCIPHER_WALK_DIFF ;
 int BLKCIPHER_WALK_PHYS ;
 int blkcipher_map_dst (struct blkcipher_walk*) ;
 int blkcipher_unmap_dst (struct blkcipher_walk*) ;
 int blkcipher_unmap_src (struct blkcipher_walk*) ;
 int memcpy (int ,int ,unsigned int) ;
 int scatterwalk_advance (int *,unsigned int) ;

__attribute__((used)) static inline unsigned int blkcipher_done_fast(struct blkcipher_walk *walk,
            unsigned int n)
{
 if (walk->flags & BLKCIPHER_WALK_COPY) {
  blkcipher_map_dst(walk);
  memcpy(walk->dst.virt.addr, walk->page, n);
  blkcipher_unmap_dst(walk);
 } else if (!(walk->flags & BLKCIPHER_WALK_PHYS)) {
  if (walk->flags & BLKCIPHER_WALK_DIFF)
   blkcipher_unmap_dst(walk);
  blkcipher_unmap_src(walk);
 }

 scatterwalk_advance(&walk->in, n);
 scatterwalk_advance(&walk->out, n);

 return n;
}
