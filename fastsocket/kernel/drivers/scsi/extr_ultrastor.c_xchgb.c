
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char xchgb(unsigned char reg,
      volatile unsigned char *mem)
{
  __asm__ ("xchgb %0,%1" : "=q" (reg), "=m" (*mem) : "0" (reg));
  return reg;
}
