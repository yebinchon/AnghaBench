
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* VPTB ;

__attribute__((used)) static inline unsigned long
find_pa(unsigned long address)
{
 unsigned long result;

 result = VPTB[address >> 13];
 result >>= 32;
 result <<= 13;
 result |= address & 0x1fff;
 return result;
}
