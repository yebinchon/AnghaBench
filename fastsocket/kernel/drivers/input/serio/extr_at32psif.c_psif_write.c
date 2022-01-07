
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct psif* port_data; } ;
struct psif {int lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int PSIF_BIT (int ) ;
 int SR ;
 int THR ;
 int TXEMPTY ;
 int dev_dbg (int *,char*) ;
 int msleep (int) ;
 int psif_readl (struct psif*,int ) ;
 int psif_writel (struct psif*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int psif_write(struct serio *io, unsigned char val)
{
 struct psif *psif = io->port_data;
 unsigned long flags;
 int timeout = 10;
 int retval = 0;

 spin_lock_irqsave(&psif->lock, flags);

 while (!(psif_readl(psif, SR) & PSIF_BIT(TXEMPTY)) && timeout--)
  msleep(10);

 if (timeout >= 0) {
  psif_writel(psif, THR, val);
 } else {
  dev_dbg(&psif->pdev->dev, "timeout writing to THR\n");
  retval = -EBUSY;
 }

 spin_unlock_irqrestore(&psif->lock, flags);

 return retval;
}
