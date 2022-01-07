
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int diag14(unsigned long rx, unsigned long ry1, unsigned long subcode)
{
 register unsigned long _ry1 asm("2") = ry1;
 register unsigned long _ry2 asm("3") = subcode;
 int rc = 0;

 asm volatile(





  "   diag    %2,2,0x14\n"

  "   ipm     %0\n"
  "   srl     %0,28\n"
  : "=d" (rc), "+d" (_ry2)
  : "d" (rx), "d" (_ry1)
  : "cc");

 return rc;
}
