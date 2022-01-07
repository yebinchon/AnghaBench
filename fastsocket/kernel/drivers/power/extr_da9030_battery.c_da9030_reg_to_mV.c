
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int da9030_reg_to_mV(int reg)
{
 return ((reg * 2650) >> 8) + 2650;
}
