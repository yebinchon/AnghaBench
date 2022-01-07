
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct megasas_instance {scalar_t__ msix_vectors; scalar_t__ adprecovery; int hba_lock; } ;


 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ;
 int complete_cmd_fusion (struct megasas_instance*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
megasas_complete_cmd_dpc_fusion(unsigned long instance_addr)
{
 struct megasas_instance *instance =
  (struct megasas_instance *)instance_addr;
 unsigned long flags;
 u32 count, MSIxIndex;

 count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;


 spin_lock_irqsave(&instance->hba_lock, flags);
 if (instance->adprecovery == MEGASAS_HW_CRITICAL_ERROR) {
  spin_unlock_irqrestore(&instance->hba_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&instance->hba_lock, flags);

 for (MSIxIndex = 0 ; MSIxIndex < count; MSIxIndex++)
  complete_cmd_fusion(instance, MSIxIndex);
}
