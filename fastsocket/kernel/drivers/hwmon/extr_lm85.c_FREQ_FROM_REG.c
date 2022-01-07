
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int FREQ_FROM_REG(const int *map, u8 reg)
{
 return map[reg & 0x07];
}
