
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;



__attribute__((used)) static inline u8 temp_to_reg(long val)
{
 if (val < 0)
  val = 0;
 else if (val > 1000 * 0xff)
  val = 0xff;
 return ((val + 500) / 1000);
}
