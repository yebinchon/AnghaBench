
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gscps2port {char* addr; int lock; } ;


 int GSC_RESET ;
 int gscps2_flush (struct gscps2port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,char*) ;

__attribute__((used)) static void gscps2_reset(struct gscps2port *ps2port)
{
 char *addr = ps2port->addr;
 unsigned long flags;


 spin_lock_irqsave(&ps2port->lock, flags);
 gscps2_flush(ps2port);
 writeb(0xff, addr+GSC_RESET);
 gscps2_flush(ps2port);
 spin_unlock_irqrestore(&ps2port->lock, flags);
}
