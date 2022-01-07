
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void intc_mode_zero(unsigned long addr,
      unsigned long handle,
      void (*fn)(unsigned long,
           unsigned long,
           unsigned long),
      unsigned int irq)
{
 fn(addr, handle, 0);
}
