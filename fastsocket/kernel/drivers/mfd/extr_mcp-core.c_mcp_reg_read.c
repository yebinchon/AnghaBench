
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* reg_read ) (struct mcp*,unsigned int) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (struct mcp*,unsigned int) ;

unsigned int mcp_reg_read(struct mcp *mcp, unsigned int reg)
{
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&mcp->lock, flags);
 val = mcp->ops->reg_read(mcp, reg);
 spin_unlock_irqrestore(&mcp->lock, flags);

 return val;
}
