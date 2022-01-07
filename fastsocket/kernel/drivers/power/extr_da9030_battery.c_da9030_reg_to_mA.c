
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int da9030_reg_to_mA(int reg)
{
 return ((reg * 24000) >> 8) / 15;
}
