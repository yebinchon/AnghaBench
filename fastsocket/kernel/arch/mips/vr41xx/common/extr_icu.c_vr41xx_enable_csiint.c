
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 scalar_t__ CPU_VR4122 ;
 scalar_t__ CPU_VR4131 ;
 scalar_t__ CPU_VR4133 ;
 int CSI_IRQ ;
 int MCSIINTREG ;
 scalar_t__ current_cpu_type () ;
 int icu2_set (int ,int ) ;
 struct irq_desc* irq_desc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_enable_csiint(uint16_t mask)
{
 struct irq_desc *desc = irq_desc + CSI_IRQ;
 unsigned long flags;

 if (current_cpu_type() == CPU_VR4122 ||
     current_cpu_type() == CPU_VR4131 ||
     current_cpu_type() == CPU_VR4133) {
  spin_lock_irqsave(&desc->lock, flags);
  icu2_set(MCSIINTREG, mask);
  spin_unlock_irqrestore(&desc->lock, flags);
 }
}
