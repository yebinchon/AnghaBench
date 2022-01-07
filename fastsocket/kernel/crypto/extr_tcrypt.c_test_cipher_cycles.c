
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct blkcipher_desc {int dummy; } ;
typedef scalar_t__ cycles_t ;


 int crypto_blkcipher_decrypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_blkcipher_encrypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 scalar_t__ get_cycles () ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int printk (char*,unsigned long,int) ;

__attribute__((used)) static int test_cipher_cycles(struct blkcipher_desc *desc, int enc,
         struct scatterlist *sg, int blen)
{
 unsigned long cycles = 0;
 int ret = 0;
 int i;

 local_bh_disable();
 local_irq_disable();


 for (i = 0; i < 4; i++) {
  if (enc)
   ret = crypto_blkcipher_encrypt(desc, sg, sg, blen);
  else
   ret = crypto_blkcipher_decrypt(desc, sg, sg, blen);

  if (ret)
   goto out;
 }


 for (i = 0; i < 8; i++) {
  cycles_t start, end;

  start = get_cycles();
  if (enc)
   ret = crypto_blkcipher_encrypt(desc, sg, sg, blen);
  else
   ret = crypto_blkcipher_decrypt(desc, sg, sg, blen);
  end = get_cycles();

  if (ret)
   goto out;

  cycles += end - start;
 }

out:
 local_irq_enable();
 local_bh_enable();

 if (ret == 0)
  printk("1 operation in %lu cycles (%d bytes)\n",
         (cycles + 4) / 8, blen);

 return ret;
}
