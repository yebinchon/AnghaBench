
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_EN_FROM_REG(int reg)
{
 static const int en[] = {2, 2, 2, 0, -1, 2, 2, 1};

 return en[(reg >> 5) & 0x07];
}
