
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_CTRL ;
 int cm_lock ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

void cm_control(u32 mask, u32 set)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&cm_lock, flags);
 val = readl(CM_CTRL) & ~mask;
 writel(val | set, CM_CTRL);
 spin_unlock_irqrestore(&cm_lock, flags);
}
