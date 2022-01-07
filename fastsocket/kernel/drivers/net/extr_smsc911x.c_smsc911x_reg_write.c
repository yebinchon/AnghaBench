
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int ioaddr; int dev_lock; TYPE_1__ config; } ;


 int BUG () ;
 int SMSC911X_USE_16BIT ;
 int SMSC911X_USE_32BIT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int) ;
 int writew (int,int) ;

__attribute__((used)) static inline void smsc911x_reg_write(struct smsc911x_data *pdata, u32 reg,
          u32 val)
{
 if (pdata->config.flags & SMSC911X_USE_32BIT) {
  writel(val, pdata->ioaddr + reg);
  return;
 }

 if (pdata->config.flags & SMSC911X_USE_16BIT) {
  unsigned long flags;




  spin_lock_irqsave(&pdata->dev_lock, flags);
  writew(val & 0xFFFF, pdata->ioaddr + reg);
  writew((val >> 16) & 0xFFFF, pdata->ioaddr + reg + 2);
  spin_unlock_irqrestore(&pdata->dev_lock, flags);
  return;
 }

 BUG();
}
