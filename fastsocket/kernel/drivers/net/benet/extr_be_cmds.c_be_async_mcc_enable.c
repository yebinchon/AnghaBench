
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct TYPE_4__ {int rearm_cq; TYPE_1__ cq; } ;
struct be_adapter {int mcc_cq_lock; TYPE_2__ mcc_obj; } ;


 int be_cq_notify (struct be_adapter*,int ,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void be_async_mcc_enable(struct be_adapter *adapter)
{
 spin_lock_bh(&adapter->mcc_cq_lock);

 be_cq_notify(adapter, adapter->mcc_obj.cq.id, 1, 0);
 adapter->mcc_obj.rearm_cq = 1;

 spin_unlock_bh(&adapter->mcc_cq_lock);
}
