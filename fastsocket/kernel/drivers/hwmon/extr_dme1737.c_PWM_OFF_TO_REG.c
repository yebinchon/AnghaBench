
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_OFF_TO_REG(int val, int ix, int reg)
{
 return (reg & ~(1 << (ix + 5))) | ((val & 0x01) << (ix + 5));
}
