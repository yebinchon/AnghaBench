
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpi_info {int dummy; } ;



__attribute__((used)) static inline int tpi(struct tpi_info *addr)
{
 int ccode;

 asm volatile(
  "	tpi	0(%2)\n"
  "	ipm	%0\n"
  "	srl	%0,28"
  : "=d" (ccode), "=m" (*addr)
  : "a" (addr)
  : "cc");
 return ccode;
}
