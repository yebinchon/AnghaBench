
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct ps2if* port_data; } ;
struct ps2if {int head; int tail; unsigned char* buf; int lock; TYPE_1__* dev; scalar_t__ base; } ;
struct TYPE_2__ {int * irq; } ;


 int PS2STAT_TXE ;
 scalar_t__ SA1111_PS2DATA ;
 scalar_t__ SA1111_PS2STAT ;
 int enable_irq (int ) ;
 int sa1111_readl (scalar_t__) ;
 int sa1111_writel (unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ps2_write(struct serio *io, unsigned char val)
{
 struct ps2if *ps2if = io->port_data;
 unsigned long flags;
 unsigned int head;

 spin_lock_irqsave(&ps2if->lock, flags);




 if (sa1111_readl(ps2if->base + SA1111_PS2STAT) & PS2STAT_TXE) {
  sa1111_writel(val, ps2if->base + SA1111_PS2DATA);
 } else {
  if (ps2if->head == ps2if->tail)
   enable_irq(ps2if->dev->irq[1]);
  head = (ps2if->head + 1) & (sizeof(ps2if->buf) - 1);
  if (head != ps2if->tail) {
   ps2if->buf[ps2if->head] = val;
   ps2if->head = head;
  }
 }

 spin_unlock_irqrestore(&ps2if->lock, flags);
 return 0;
}
