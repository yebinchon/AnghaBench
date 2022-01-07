
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* PWM_FREQ ;

__attribute__((used)) static inline int PWM_FREQ_FROM_REG(int reg)
{
 return PWM_FREQ[reg & 0x0f];
}
