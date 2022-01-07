
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR_Q720_private {int irq_enable; int siops; int * hosts; scalar_t__ mem_base; } ;
typedef int irqreturn_t ;
typedef int __u8 ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ffz (int) ;
 int ncr53c8xx_intr (int,int ) ;
 int readb (scalar_t__) ;

__attribute__((used)) static irqreturn_t
NCR_Q720_intr(int irq, void *data)
{
 struct NCR_Q720_private *p = (struct NCR_Q720_private *)data;
 __u8 sir = (readb(p->mem_base + 0x0d) & 0xf0) >> 4;
 __u8 siop;

 sir |= ~p->irq_enable;

 if(sir == 0xff)
  return IRQ_NONE;


 while((siop = ffz(sir)) < p->siops) {
  sir |= 1<<siop;
  ncr53c8xx_intr(irq, p->hosts[siop]);
 }
 return IRQ_HANDLED;
}
