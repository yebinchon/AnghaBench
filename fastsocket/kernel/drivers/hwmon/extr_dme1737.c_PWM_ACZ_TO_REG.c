
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_ACZ_TO_REG(int val, int reg)
{
 int acz = (val == 4) ? 2 : val - 1;

 return (reg & 0x1f) | ((acz & 0x07) << 5);
}
