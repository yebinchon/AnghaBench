
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int FAN_TYPE_FROM_REG(int reg)
{
 int edge = (reg >> 1) & 0x03;

 return (edge > 0) ? 1 << (edge - 1) : 0;
}
