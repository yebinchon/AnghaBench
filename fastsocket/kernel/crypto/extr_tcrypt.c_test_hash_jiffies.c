
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct hash_desc {int dummy; } ;


 int HZ ;
 int crypto_hash_final (struct hash_desc*,char*) ;
 int crypto_hash_init (struct hash_desc*) ;
 int crypto_hash_update (struct hash_desc*,struct scatterlist*,int) ;
 unsigned long jiffies ;
 int printk (char*,int,long) ;
 int test_hash_jiffies_digest (struct hash_desc*,struct scatterlist*,int,char*,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_hash_jiffies(struct hash_desc *desc, struct scatterlist *sg,
        int blen, int plen, char *out, int sec)
{
 unsigned long start, end;
 int bcount, pcount;
 int ret;

 if (plen == blen)
  return test_hash_jiffies_digest(desc, sg, blen, out, sec);

 for (start = jiffies, end = start + sec * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  ret = crypto_hash_init(desc);
  if (ret)
   return ret;
  for (pcount = 0; pcount < blen; pcount += plen) {
   ret = crypto_hash_update(desc, sg, plen);
   if (ret)
    return ret;
  }

  ret = crypto_hash_final(desc, out);
  if (ret)
   return ret;
 }

 printk("%6u opers/sec, %9lu bytes/sec\n",
        bcount / sec, ((long)bcount * blen) / sec);

 return 0;
}
