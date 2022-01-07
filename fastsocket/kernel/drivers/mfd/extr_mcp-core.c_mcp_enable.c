
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp {int lock; TYPE_1__* ops; int use_count; } ;
struct TYPE_2__ {int (* enable ) (struct mcp*) ;} ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct mcp*) ;

void mcp_enable(struct mcp *mcp)
{
 spin_lock_irq(&mcp->lock);
 if (mcp->use_count++ == 0)
  mcp->ops->enable(mcp);
 spin_unlock_irq(&mcp->lock);
}
