
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PWM_RR_FROM_REG (int,int) ;

__attribute__((used)) static inline int PWM_RR_EN_FROM_REG(int reg, int ix)
{
 return PWM_RR_FROM_REG(reg, ix) ? 1 : 0;
}
