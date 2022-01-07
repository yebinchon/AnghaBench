
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline unsigned int
fan_from_reg(u8 reg, unsigned int div)
{
 if (reg == 0 || reg == 255)
  return 0;
 return 1350000U / (reg * div);
}
