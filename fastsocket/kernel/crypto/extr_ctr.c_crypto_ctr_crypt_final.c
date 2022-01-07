
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct crypto_cipher {int dummy; } ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int * iv; } ;


 int * PTR_ALIGN (int *,unsigned long) ;
 unsigned long crypto_cipher_alignmask (struct crypto_cipher*) ;
 unsigned int crypto_cipher_blocksize (struct crypto_cipher*) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int *,int *) ;
 int crypto_inc (int *,unsigned int) ;
 int crypto_xor (int *,int *,unsigned int) ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static void crypto_ctr_crypt_final(struct blkcipher_walk *walk,
       struct crypto_cipher *tfm)
{
 unsigned int bsize = crypto_cipher_blocksize(tfm);
 unsigned long alignmask = crypto_cipher_alignmask(tfm);
 u8 *ctrblk = walk->iv;
 u8 tmp[bsize + alignmask];
 u8 *keystream = PTR_ALIGN(tmp + 0, alignmask + 1);
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 unsigned int nbytes = walk->nbytes;

 crypto_cipher_encrypt_one(tfm, keystream, ctrblk);
 crypto_xor(keystream, src, nbytes);
 memcpy(dst, keystream, nbytes);

 crypto_inc(ctrblk, bsize);
}
