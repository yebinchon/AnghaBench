
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 in0_to_reg(long val)
{
 if (val <= 0)
  return 0;
 if (val >= 4032)
  return 0xfc;
 return (((val + 32) / 64) << 2);
}
