
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int FAN_TYPE_TO_REG(int val, int reg)
{
 int edge = (val == 4) ? 3 : val;

 return (reg & 0xf9) | (edge << 1);
}
