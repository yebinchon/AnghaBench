
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ehca_shca {int ib_device; int ipz_hca_handle; } ;
struct ehca_eq {int ipz_queue; int interrupt_task; scalar_t__ is_initialized; int ist; } ;


 int EINVAL ;
 scalar_t__ H_SUCCESS ;
 int ehca_err (int *,char*) ;
 scalar_t__ hipz_h_destroy_eq (int ,struct ehca_eq*) ;
 int ibmebus_free_irq (int ,void*) ;
 int ipz_queue_dtor (int *,int *) ;
 int shca_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

int ehca_destroy_eq(struct ehca_shca *shca, struct ehca_eq *eq)
{
 unsigned long flags;
 u64 h_ret;

 ibmebus_free_irq(eq->ist, (void *)shca);

 spin_lock_irqsave(&shca_list_lock, flags);
 eq->is_initialized = 0;
 spin_unlock_irqrestore(&shca_list_lock, flags);

 tasklet_kill(&eq->interrupt_task);

 h_ret = hipz_h_destroy_eq(shca->ipz_hca_handle, eq);

 if (h_ret != H_SUCCESS) {
  ehca_err(&shca->ib_device, "Can't free EQ resources.");
  return -EINVAL;
 }
 ipz_queue_dtor(((void*)0), &eq->ipz_queue);

 return 0;
}
