
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long next_jiffy_time ;
 unsigned long read_tcr1 () ;
 unsigned long ticks_per_usec ;

unsigned long iop_gettimeoffset(void)
{
 unsigned long offset, temp;




 asm volatile (
 "mrc	p15, 0, %0, c15, c1, 0\n\t"
 "tst	%0, #(1 << 6)\n\t"
 "orreq	%0, %0, #(1 << 6)\n\t"
 "mcreq	p15, 0, %0, c15, c1, 0\n\t"





 : "=r"(temp) : : "cc");

 offset = next_jiffy_time - read_tcr1();

 return offset / ticks_per_usec;
}
