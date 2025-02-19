
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; void* iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int BUG_ON (int) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypt_s390_kmc (long,void*,int *,int *,unsigned int) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int cbc_aes_crypt(struct blkcipher_desc *desc, long func, void *param,
    struct blkcipher_walk *walk)
{
 int ret = blkcipher_walk_virt(desc, walk);
 unsigned int nbytes = walk->nbytes;

 if (!nbytes)
  goto out;

 memcpy(param, walk->iv, AES_BLOCK_SIZE);
 do {

  unsigned int n = nbytes & ~(AES_BLOCK_SIZE - 1);
  u8 *out = walk->dst.virt.addr;
  u8 *in = walk->src.virt.addr;

  ret = crypt_s390_kmc(func, param, out, in, n);
  BUG_ON((ret < 0) || (ret != n));

  nbytes &= AES_BLOCK_SIZE - 1;
  ret = blkcipher_walk_done(desc, walk, nbytes);
 } while ((nbytes = walk->nbytes));
 memcpy(walk->iv, param, AES_BLOCK_SIZE);

out:
 return ret;
}
