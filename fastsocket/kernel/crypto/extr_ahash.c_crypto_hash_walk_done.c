
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_hash_walk {unsigned int alignmask; unsigned int entrylen; unsigned int data; unsigned int offset; int sg; int total; int pg; int flags; } ;


 unsigned int ALIGN (unsigned int,unsigned int) ;
 scalar_t__ PAGE_SIZE ;
 int crypto_kunmap (unsigned int,int ) ;
 int crypto_yield (int ) ;
 int hash_walk_new_entry (struct crypto_hash_walk*) ;
 int hash_walk_next (struct crypto_hash_walk*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int scatterwalk_sg_next (int ) ;

int crypto_hash_walk_done(struct crypto_hash_walk *walk, int err)
{
 unsigned int alignmask = walk->alignmask;
 unsigned int nbytes = walk->entrylen;

 walk->data -= walk->offset;

 if (nbytes && walk->offset & alignmask && !err) {
  walk->offset += alignmask - 1;
  walk->offset = ALIGN(walk->offset, alignmask + 1);
  walk->data += walk->offset;

  nbytes = min(nbytes,
        ((unsigned int)(PAGE_SIZE)) - walk->offset);
  walk->entrylen -= nbytes;

  return nbytes;
 }

 crypto_kunmap(walk->data, 0);
 crypto_yield(walk->flags);

 if (err)
  return err;

 if (nbytes) {
  walk->offset = 0;
  walk->pg++;
  return hash_walk_next(walk);
 }

 if (!walk->total)
  return 0;

 walk->sg = scatterwalk_sg_next(walk->sg);

 return hash_walk_new_entry(walk);
}
