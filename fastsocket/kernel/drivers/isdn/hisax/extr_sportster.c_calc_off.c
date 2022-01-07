
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
calc_off(unsigned int base, unsigned int off)
{
 return(base + ((off & 0xfc)<<8) + ((off & 3)<<1));
}
