
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_irq (int) ;

__attribute__((used)) static void
rawhide_srm_device_interrupt(unsigned long vector)
{
 int irq;

 irq = (vector - 0x800) >> 4;
 if (irq == 52) {

  irq = 72;
 }


 irq -= ((irq + 16) >> 2) & 0x38;

 handle_irq(irq);
}
