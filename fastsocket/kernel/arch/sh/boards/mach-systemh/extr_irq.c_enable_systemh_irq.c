
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ctrl_inl (unsigned long) ;
 int ctrl_outl (unsigned long,unsigned long) ;
 scalar_t__ systemh_irq_mask_register ;

__attribute__((used)) static void enable_systemh_irq(unsigned int irq)
{
 if (systemh_irq_mask_register) {
  unsigned long val, mask = 0x01 << 1;


  val = ctrl_inl((unsigned long)systemh_irq_mask_register);
  val |= mask;
  ctrl_outl(val, (unsigned long)systemh_irq_mask_register);
 }
}
