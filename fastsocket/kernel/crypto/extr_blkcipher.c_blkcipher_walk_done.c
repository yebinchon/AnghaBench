
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {int nbytes; int flags; unsigned int total; scalar_t__ iv; scalar_t__ buffer; scalar_t__ page; int out; int in; } ;
struct blkcipher_desc {scalar_t__ info; int flags; struct crypto_blkcipher* tfm; } ;


 int BLKCIPHER_WALK_SLOW ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 unsigned int blkcipher_done_fast (struct blkcipher_walk*,unsigned int) ;
 unsigned int blkcipher_done_slow (struct crypto_blkcipher*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_next (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_blkcipher_ivsize (struct crypto_blkcipher*) ;
 int crypto_yield (int ) ;
 int free_page (unsigned long) ;
 int kfree (scalar_t__) ;
 scalar_t__ likely (int) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int scatterwalk_done (int *,int,unsigned int) ;

int blkcipher_walk_done(struct blkcipher_desc *desc,
   struct blkcipher_walk *walk, int err)
{
 struct crypto_blkcipher *tfm = desc->tfm;
 unsigned int nbytes = 0;

 if (likely(err >= 0)) {
  unsigned int n = walk->nbytes - err;

  if (likely(!(walk->flags & BLKCIPHER_WALK_SLOW)))
   n = blkcipher_done_fast(walk, n);
  else if (WARN_ON(err)) {
   err = -EINVAL;
   goto err;
  } else
   n = blkcipher_done_slow(tfm, walk, n);

  nbytes = walk->total - n;
  err = 0;
 }

 scatterwalk_done(&walk->in, 0, nbytes);
 scatterwalk_done(&walk->out, 1, nbytes);

err:
 walk->total = nbytes;
 walk->nbytes = nbytes;

 if (nbytes) {
  crypto_yield(desc->flags);
  return blkcipher_walk_next(desc, walk);
 }

 if (walk->iv != desc->info)
  memcpy(desc->info, walk->iv, crypto_blkcipher_ivsize(tfm));
 if (walk->buffer != walk->page)
  kfree(walk->buffer);
 if (walk->page)
  free_page((unsigned long)walk->page);

 return err;
}
