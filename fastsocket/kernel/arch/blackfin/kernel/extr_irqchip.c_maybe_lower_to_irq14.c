
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSYNC () ;
 int bfin_read_IPEND () ;
 int lower_to_irq14 () ;

__attribute__((used)) static void maybe_lower_to_irq14(void)
{
 unsigned short pending, other_ints;
 CSYNC();
 pending = bfin_read_IPEND() & ~0x8000;
 other_ints = pending & (pending - 1);
 if (other_ints == 0)
  lower_to_irq14();
}
