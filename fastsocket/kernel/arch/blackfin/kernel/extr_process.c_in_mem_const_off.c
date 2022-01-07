
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_mem (unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline
int in_mem_const_off(unsigned long addr, unsigned long size, unsigned long off,
                     unsigned long const_addr, unsigned long const_size)
{
 return const_size &&
        in_mem(addr, size, const_addr + off, const_addr + const_size);
}
