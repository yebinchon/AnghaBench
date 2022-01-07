
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {int out; scalar_t__ buffer; } ;


 scalar_t__ ALIGN (unsigned long,unsigned int) ;
 int * blkcipher_get_spot (int *,unsigned int) ;
 unsigned int crypto_blkcipher_alignmask (struct crypto_blkcipher*) ;
 int scatterwalk_copychunks (int *,int *,unsigned int,int) ;

__attribute__((used)) static inline unsigned int blkcipher_done_slow(struct crypto_blkcipher *tfm,
            struct blkcipher_walk *walk,
            unsigned int bsize)
{
 u8 *addr;
 unsigned int alignmask = crypto_blkcipher_alignmask(tfm);

 addr = (u8 *)ALIGN((unsigned long)walk->buffer, alignmask + 1);
 addr = blkcipher_get_spot(addr, bsize);
 scatterwalk_copychunks(addr, &walk->out, bsize, 1);
 return bsize;
}
