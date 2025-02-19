
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ beat_set_interrupt_mask (unsigned int,unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long* beatic_irq_mask_ack ;
 unsigned long* beatic_irq_mask_enable ;
 int panic (char*) ;

__attribute__((used)) static inline void beatic_update_irq_mask(unsigned int irq_plug)
{
 int off;
 unsigned long masks[4];

 off = (irq_plug / 256) * 4;
 masks[0] = beatic_irq_mask_enable[off + 0]
  & beatic_irq_mask_ack[off + 0];
 masks[1] = beatic_irq_mask_enable[off + 1]
  & beatic_irq_mask_ack[off + 1];
 masks[2] = beatic_irq_mask_enable[off + 2]
  & beatic_irq_mask_ack[off + 2];
 masks[3] = beatic_irq_mask_enable[off + 3]
  & beatic_irq_mask_ack[off + 3];
 if (beat_set_interrupt_mask(irq_plug&~255UL,
  masks[0], masks[1], masks[2], masks[3]) != 0)
  panic("Failed to set mask IRQ!");
}
