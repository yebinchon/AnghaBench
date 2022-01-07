
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_telecom_divisor ) (struct mcp*,unsigned int) ;} ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct mcp*,unsigned int) ;

void mcp_set_telecom_divisor(struct mcp *mcp, unsigned int div)
{
 spin_lock_irq(&mcp->lock);
 mcp->ops->set_telecom_divisor(mcp, div);
 spin_unlock_irq(&mcp->lock);
}
