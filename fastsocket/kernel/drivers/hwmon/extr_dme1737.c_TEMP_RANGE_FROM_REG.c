
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* TEMP_RANGE ;

__attribute__((used)) static inline int TEMP_RANGE_FROM_REG(int reg)
{
 return TEMP_RANGE[(reg >> 4) & 0x0f];
}
