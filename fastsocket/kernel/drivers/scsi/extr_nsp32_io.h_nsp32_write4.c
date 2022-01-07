
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outl (unsigned long,unsigned int) ;

__attribute__((used)) static inline void nsp32_write4(unsigned int base,
    unsigned int index,
    unsigned long val)
{
 outl(val, (base + index));
}
