
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSC01_IC_EOI ;
 int MSCIC_WRITE (int ,int ) ;
 int cpu_has_veic ;
 int mask_msc_irq (unsigned int) ;
 int smtc_im_ack_irq (unsigned int) ;

__attribute__((used)) static void level_mask_and_ack_msc_irq(unsigned int irq)
{
 mask_msc_irq(irq);
 if (!cpu_has_veic)
  MSCIC_WRITE(MSC01_IC_EOI, 0);

 smtc_im_ack_irq(irq);
}
