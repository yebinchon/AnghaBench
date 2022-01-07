
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int clz(unsigned long x)
{
 __asm__(
 "	.set	push					\n"
 "	.set	mips32					\n"
 "	clz	%0, %1					\n"
 "	.set	pop					\n"
 : "=r" (x)
 : "r" (x));

 return x;
}
