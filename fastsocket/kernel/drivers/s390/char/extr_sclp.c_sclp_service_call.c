
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sclp_cmdw_t ;


 int EBUSY ;
 int EIO ;

int
sclp_service_call(sclp_cmdw_t command, void *sccb)
{
 int cc;

 asm volatile(
  "	.insn	rre,0xb2200000,%1,%2\n"
  "	ipm	%0\n"
  "	srl	%0,28"
  : "=&d" (cc) : "d" (command), "a" (__pa(sccb))
  : "cc", "memory");
 if (cc == 3)
  return -EIO;
 if (cc == 2)
  return -EBUSY;
 return 0;
}
