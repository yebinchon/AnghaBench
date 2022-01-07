
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_EN_TO_REG(int val, int reg)
{
 int en = (val == 1) ? 7 : 3;

 return (reg & 0x1f) | ((en & 0x07) << 5);
}
