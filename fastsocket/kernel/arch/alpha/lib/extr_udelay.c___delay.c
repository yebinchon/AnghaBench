
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
__delay(int loops)
{
 int tmp;
 __asm__ __volatile__(
  "	rpcc %0\n"
  "	addl %1,%0,%1\n"
  "1:	rpcc %0\n"
  "	subl %1,%0,%0\n"
  "	bgt %0,1b"
  : "=&r" (tmp), "=r" (loops) : "1"(loops));
}
