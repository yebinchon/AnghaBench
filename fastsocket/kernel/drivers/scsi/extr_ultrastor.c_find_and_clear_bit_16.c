
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

__attribute__((used)) static inline int find_and_clear_bit_16(unsigned long *field)
{
  int rv;

  if (*field == 0)
    panic("No free mscp");

  asm volatile (
 "xorl %0,%0\n\t"
 "0: bsfw %1,%w0\n\t"
 "btr %0,%1\n\t"
 "jnc 0b"
 : "=&r" (rv), "=m" (*field) :);

  return rv;
}
