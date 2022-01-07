
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void cpu_leave_lowpower(void)
{
 unsigned int v;

 asm volatile( "mrc	p15, 0, %0, c1, c0, 0\n"
 "	orr	%0, %0, #0x04\n"
 "	mcr	p15, 0, %0, c1, c0, 0\n"
 "	mrc	p15, 0, %0, c1, c0, 1\n"
 "	orr	%0, %0, #0x20\n"
 "	mcr	p15, 0, %0, c1, c0, 1\n"
   : "=&r" (v)
   :
   : "cc");
}
