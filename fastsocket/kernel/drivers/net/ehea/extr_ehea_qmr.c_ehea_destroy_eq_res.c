
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ehea_eq {int hw_queue; int spinlock; int fw_handle; TYPE_1__* adapter; } ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_free_resource (int ,int ,scalar_t__) ;
 int hw_queue_dtor (int *) ;
 int kfree (struct ehea_eq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 ehea_destroy_eq_res(struct ehea_eq *eq, u64 force)
{
 u64 hret;
 unsigned long flags;

 spin_lock_irqsave(&eq->spinlock, flags);

 hret = ehea_h_free_resource(eq->adapter->handle, eq->fw_handle, force);
 spin_unlock_irqrestore(&eq->spinlock, flags);

 if (hret != H_SUCCESS)
  return hret;

 hw_queue_dtor(&eq->hw_queue);
 kfree(eq);

 return hret;
}
