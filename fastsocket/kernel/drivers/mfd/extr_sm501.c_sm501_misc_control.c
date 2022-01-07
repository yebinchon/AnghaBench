
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int reg_lock; int dev; scalar_t__ regs; } ;
struct device {int dummy; } ;


 scalar_t__ SM501_MISC_CONTROL ;
 int dev_dbg (int ,char*,unsigned long) ;
 struct sm501_devdata* dev_get_drvdata (struct device*) ;
 unsigned long readl (scalar_t__) ;
 int sm501_sync_regs (struct sm501_devdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

int sm501_misc_control(struct device *dev,
         unsigned long set, unsigned long clear)
{
 struct sm501_devdata *sm = dev_get_drvdata(dev);
 unsigned long misc;
 unsigned long save;
 unsigned long to;

 spin_lock_irqsave(&sm->reg_lock, save);

 misc = readl(sm->regs + SM501_MISC_CONTROL);
 to = (misc & ~clear) | set;

 if (to != misc) {
  writel(to, sm->regs + SM501_MISC_CONTROL);
  sm501_sync_regs(sm);

  dev_dbg(sm->dev, "MISC_CONTROL %08lx\n", misc);
 }

 spin_unlock_irqrestore(&sm->reg_lock, save);
 return to;
}
