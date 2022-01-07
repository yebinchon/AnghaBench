
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int xsc3_l2_present(void)
{
 unsigned long l2ctype;

 __asm__("mrc p15, 1, %0, c0, c0, 1" : "=r" (l2ctype));

 return !!(l2ctype & 0xf8);
}
