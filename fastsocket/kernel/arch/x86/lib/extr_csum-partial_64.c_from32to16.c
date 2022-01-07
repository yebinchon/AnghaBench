
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned short from32to16(unsigned a)
{
 unsigned short b = a >> 16;
 asm("addw %w2,%w0\n\t"
     "adcw $0,%w0\n"
     : "=r" (b)
     : "0" (b), "r" (a));
 return b;
}
