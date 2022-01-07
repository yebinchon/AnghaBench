
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static u32 lpphy_qdiv_roundup(u32 dividend, u32 divisor, u8 precision)
{
 u32 quotient, remainder;

 if (divisor == 0)
  return 0;

 quotient = dividend / divisor;
 remainder = dividend % divisor;

 while (precision > 0) {
  quotient <<= 1;
  if (remainder << 1 >= divisor) {
   quotient++;
   remainder = (remainder << 1) - divisor;
  }
  precision--;
 }

 if (remainder << 1 >= divisor)
  quotient++;

 return quotient;
}
