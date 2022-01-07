
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {unsigned int blocksize; int iv; scalar_t__ buffer; } ;


 unsigned int ALIGN (unsigned long,unsigned int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int * blkcipher_get_spot (int *,unsigned int) ;
 unsigned int crypto_blkcipher_ivsize (struct crypto_blkcipher*) ;
 int crypto_tfm_ctx_alignment () ;
 scalar_t__ kmalloc (unsigned int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 int memcpy (int *,int ,unsigned int) ;

__attribute__((used)) static inline int blkcipher_copy_iv(struct blkcipher_walk *walk,
        struct crypto_blkcipher *tfm,
        unsigned int alignmask)
{
 unsigned bs = walk->blocksize;
 unsigned int ivsize = crypto_blkcipher_ivsize(tfm);
 unsigned aligned_bs = ALIGN(bs, alignmask + 1);
 unsigned int size = aligned_bs * 2 + ivsize + max(aligned_bs, ivsize) -
       (alignmask + 1);
 u8 *iv;

 size += alignmask & ~(crypto_tfm_ctx_alignment() - 1);
 walk->buffer = kmalloc(size, GFP_ATOMIC);
 if (!walk->buffer)
  return -ENOMEM;

 iv = (u8 *)ALIGN((unsigned long)walk->buffer, alignmask + 1);
 iv = blkcipher_get_spot(iv, bs) + aligned_bs;
 iv = blkcipher_get_spot(iv, bs) + aligned_bs;
 iv = blkcipher_get_spot(iv, ivsize);

 walk->iv = memcpy(iv, walk->iv, ivsize);
 return 0;
}
