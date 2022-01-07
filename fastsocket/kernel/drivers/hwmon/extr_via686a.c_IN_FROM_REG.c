
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline long IN_FROM_REG(u8 val, int inNum)
{



 if (inNum <= 1)
  return (long) ((250000 * val + 1330000 + 21024 / 2) / 21024);
 else if (inNum == 2)
  return (long) ((250000 * val + 1330000 + 15737 / 2) / 15737);
 else if (inNum == 3)
  return (long) ((250000 * val + 1330000 + 10108 / 2) / 10108);
 else
  return (long) ((2500000 * val + 13300000 + 41714 / 2) / 41714);
}
