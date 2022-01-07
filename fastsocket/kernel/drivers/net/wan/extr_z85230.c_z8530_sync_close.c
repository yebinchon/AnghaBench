
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int lock; int * regs; scalar_t__ sync; scalar_t__ max; int * irqs; } ;
struct net_device {int dummy; } ;


 int R0 ;
 size_t R3 ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int write_zsreg (struct z8530_channel*,size_t,int ) ;
 int z8530_nop ;
 int z8530_rtsdtr (struct z8530_channel*,int ) ;

int z8530_sync_close(struct net_device *dev, struct z8530_channel *c)
{
 u8 chk;
 unsigned long flags;

 spin_lock_irqsave(c->lock, flags);
 c->irqs = &z8530_nop;
 c->max = 0;
 c->sync = 0;

 chk=read_zsreg(c,R0);
 write_zsreg(c, R3, c->regs[R3]);
 z8530_rtsdtr(c,0);

 spin_unlock_irqrestore(c->lock, flags);
 return 0;
}
