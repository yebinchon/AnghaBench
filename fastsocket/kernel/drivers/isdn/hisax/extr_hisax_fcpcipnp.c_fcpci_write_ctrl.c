
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritz_bcs {struct fritz_adapter* adapter; } ;
struct fritz_adapter {int hw_lock; } ;


 int __fcpci_write_ctrl (struct fritz_bcs*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fcpci_write_ctrl(struct fritz_bcs *bcs, int which)
{
 struct fritz_adapter *adapter = bcs->adapter;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 __fcpci_write_ctrl(bcs, which);
 spin_unlock_irqrestore(&adapter->hw_lock, flags);
}
