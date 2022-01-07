
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1_WRITE ;
 int HZ ;
 int b1_tx_empty (unsigned int) ;
 int b1outp (unsigned int,int ,unsigned char) ;
 int jiffies ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static inline int b1_save_put_byte(unsigned int base, unsigned char val)
{
 unsigned long stop = jiffies + 2 * HZ;
 while (!b1_tx_empty(base) && time_before(jiffies,stop));
 if (!b1_tx_empty(base)) return -1;
 b1outp(base, B1_WRITE, val);
 return 0;
}
