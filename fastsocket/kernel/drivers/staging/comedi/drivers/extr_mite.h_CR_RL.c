
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*) ;

__attribute__((used)) static inline int CR_RL(unsigned int retry_limit)
{
 int value = 0;

 while (retry_limit) {
  retry_limit >>= 1;
  value++;
 }
 if (value > 0x7)
  printk("comedi: bug! retry_limit too large\n");
 return (value & 0x7) << 21;
}
