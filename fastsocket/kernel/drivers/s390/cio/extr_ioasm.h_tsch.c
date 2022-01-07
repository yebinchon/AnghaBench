
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct irb {int dummy; } ;



__attribute__((used)) static inline int tsch(struct subchannel_id schid, struct irb *addr)
{
 register struct subchannel_id reg1 asm ("1") = schid;
 int ccode;

 asm volatile(
  "	tsch	0(%3)\n"
  "	ipm	%0\n"
  "	srl	%0,28"
  : "=d" (ccode), "=m" (*addr)
  : "d" (reg1), "a" (addr)
  : "cc");
 return ccode;
}
