
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void cmf_activate(void *area, unsigned int onoff)
{
 register void * __gpr2 asm("2");
 register long __gpr1 asm("1");

 __gpr2 = area;
 __gpr1 = onoff ? 2 : 0;

 asm("schm" : : "d" (__gpr2), "d" (__gpr1) );
}
