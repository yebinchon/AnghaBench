
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void *
find_pa(unsigned long *vptb, void *ptr)
{
 unsigned long address = (unsigned long) ptr;
 unsigned long result;

 result = vptb[address >> 13];
 result >>= 32;
 result <<= 13;
 result |= address & 0x1fff;
 return (void *) result;
}
