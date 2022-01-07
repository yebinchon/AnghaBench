
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline __attribute__((const))
int __ilog2_u32(u32 n)
{
 int bit;
 asm ("cntlzw %0,%1" : "=r" (bit) : "r" (n));
 return 31 - bit;
}
