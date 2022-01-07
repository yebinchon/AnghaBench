
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int dummy; } ;



__attribute__((used)) static inline int rchp(struct chp_id chpid)
{
 register struct chp_id reg1 asm ("1") = chpid;
 int ccode;

 asm volatile(
  "	lr	1,%1\n"
  "	rchp\n"
  "	ipm	%0\n"
  "	srl	%0,28"
  : "=d" (ccode) : "d" (reg1) : "cc");
 return ccode;
}
