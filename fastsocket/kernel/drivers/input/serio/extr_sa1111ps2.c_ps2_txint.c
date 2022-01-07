
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {size_t head; size_t tail; int lock; scalar_t__ base; int * buf; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int PS2STAT_TXE ;
 scalar_t__ SA1111_PS2DATA ;
 scalar_t__ SA1111_PS2STAT ;
 int disable_irq_nosync (int) ;
 unsigned int sa1111_readl (scalar_t__) ;
 int sa1111_writel (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ps2_txint(int irq, void *dev_id)
{
 struct ps2if *ps2if = dev_id;
 unsigned int status;

 spin_lock(&ps2if->lock);
 status = sa1111_readl(ps2if->base + SA1111_PS2STAT);
 if (ps2if->head == ps2if->tail) {
  disable_irq_nosync(irq);

 } else if (status & PS2STAT_TXE) {
  sa1111_writel(ps2if->buf[ps2if->tail], ps2if->base + SA1111_PS2DATA);
  ps2if->tail = (ps2if->tail + 1) & (sizeof(ps2if->buf) - 1);
 }
 spin_unlock(&ps2if->lock);

 return IRQ_HANDLED;
}
