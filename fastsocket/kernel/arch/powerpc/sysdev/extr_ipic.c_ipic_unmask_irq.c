
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipic {int regs; } ;
struct TYPE_2__ {int bit; int mask; } ;


 struct ipic* ipic_from_irq (unsigned int) ;
 TYPE_1__* ipic_info ;
 unsigned int ipic_irq_to_hw (unsigned int) ;
 int ipic_lock ;
 int ipic_read (int ,int ) ;
 int ipic_write (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipic_unmask_irq(unsigned int virq)
{
 struct ipic *ipic = ipic_from_irq(virq);
 unsigned int src = ipic_irq_to_hw(virq);
 unsigned long flags;
 u32 temp;

 spin_lock_irqsave(&ipic_lock, flags);

 temp = ipic_read(ipic->regs, ipic_info[src].mask);
 temp |= (1 << (31 - ipic_info[src].bit));
 ipic_write(ipic->regs, ipic_info[src].mask, temp);

 spin_unlock_irqrestore(&ipic_lock, flags);
}
