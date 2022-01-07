
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline void __delay(unsigned int loops)
{
 __asm__ __volatile__ (
 "	.set	noreorder				\n"
 "	.align	3					\n"
 "1:	bnez	%0, 1b					\n"
 "	subu	%0, 1					\n"
 "	.set	reorder					\n"
 : "=r" (loops)
 : "0" (loops));
}
