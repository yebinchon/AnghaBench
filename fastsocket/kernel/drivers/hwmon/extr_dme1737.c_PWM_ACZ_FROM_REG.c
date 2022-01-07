
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_ACZ_FROM_REG(int reg)
{
 static const int acz[] = {1, 2, 4, 0, 0, 6, 7, 0};

 return acz[(reg >> 5) & 0x07];
}
