
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int ENODEV ;
 int nr64 (unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int __niu_wait_bits_clear(struct niu *np, unsigned long reg,
     u64 bits, int limit, int delay)
{
 while (--limit >= 0) {
  u64 val = nr64(reg);

  if (!(val & bits))
   break;
  udelay(delay);
 }
 if (limit < 0)
  return -ENODEV;
 return 0;
}
