
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int chsc(void *chsc_area)
{
 typedef struct { char _[4096]; } addr_type;
 int cc;

 asm volatile(
  "	.insn	rre,0xb25f0000,%2,0\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (cc), "=m" (*(addr_type *) chsc_area)
  : "d" (chsc_area), "m" (*(addr_type *) chsc_area)
  : "cc");
 return cc;
}
