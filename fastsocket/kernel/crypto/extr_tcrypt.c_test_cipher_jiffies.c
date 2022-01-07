
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct blkcipher_desc {int dummy; } ;


 int HZ ;
 int crypto_blkcipher_decrypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_blkcipher_encrypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 unsigned long jiffies ;
 int printk (char*,int,int,long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_cipher_jiffies(struct blkcipher_desc *desc, int enc,
          struct scatterlist *sg, int blen, int sec)
{
 unsigned long start, end;
 int bcount;
 int ret;

 for (start = jiffies, end = start + sec * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  if (enc)
   ret = crypto_blkcipher_encrypt(desc, sg, sg, blen);
  else
   ret = crypto_blkcipher_decrypt(desc, sg, sg, blen);

  if (ret)
   return ret;
 }

 printk("%d operations in %d seconds (%ld bytes)\n",
        bcount, sec, (long)bcount * blen);
 return 0;
}
