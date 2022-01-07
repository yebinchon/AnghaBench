
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct hash_desc {int dummy; } ;


 int HZ ;
 int crypto_hash_digest (struct hash_desc*,struct scatterlist*,int,char*) ;
 unsigned long jiffies ;
 int printk (char*,int,long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_hash_jiffies_digest(struct hash_desc *desc,
        struct scatterlist *sg, int blen,
        char *out, int sec)
{
 unsigned long start, end;
 int bcount;
 int ret;

 for (start = jiffies, end = start + sec * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  ret = crypto_hash_digest(desc, sg, blen, out);
  if (ret)
   return ret;
 }

 printk("%6u opers/sec, %9lu bytes/sec\n",
        bcount / sec, ((long)bcount * blen) / sec);

 return 0;
}
