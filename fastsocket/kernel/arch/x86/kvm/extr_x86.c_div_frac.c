
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t div_frac(uint32_t dividend, uint32_t divisor)
{
 uint32_t quotient, remainder;



 __asm__ ( "divl %4"
    : "=a" (quotient), "=d" (remainder)
    : "0" (0), "1" (dividend), "r" (divisor) );
 return quotient;
}
