
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EPSW_FLAG_Z ;

__attribute__((used)) static int mask_test_and_clear(volatile u8 *ptr, u8 mask)
{
 u32 epsw;
 asm volatile("	bclr	%1,(%2)		\n"
       "	mov	epsw,%0		\n"
       : "=d"(epsw) : "d"(mask), "a"(ptr));
 return !(epsw & EPSW_FLAG_Z);
}
