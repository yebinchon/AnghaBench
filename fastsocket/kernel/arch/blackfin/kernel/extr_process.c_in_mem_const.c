
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_mem_const_off (unsigned long,unsigned long,int ,unsigned long,unsigned long) ;

__attribute__((used)) static inline
int in_mem_const(unsigned long addr, unsigned long size,
                 unsigned long const_addr, unsigned long const_size)
{
 return in_mem_const_off(addr, size, 0, const_addr, const_size);
}
