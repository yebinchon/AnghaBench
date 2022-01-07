
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megasas_irq_context {int MSIxIndex; struct megasas_instance* instance; } ;
struct megasas_instance {int work_init; int reg_set; TYPE_1__* instancet; int reset_flags; int msix_vectors; scalar_t__ mask_interrupts; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* clear_intr ) (int ) ;int (* read_fw_status_reg ) (int ) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MEGASAS_FUSION_IN_RESET ;
 int MFI_STATE_FAULT ;
 int MFI_STATE_MASK ;
 int complete_cmd_fusion (struct megasas_instance*,int ) ;
 int schedule_work (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 scalar_t__ test_bit (int ,int *) ;

irqreturn_t megasas_isr_fusion(int irq, void *devp)
{
 struct megasas_irq_context *irq_context = devp;
 struct megasas_instance *instance = irq_context->instance;
 u32 mfiStatus, fw_state;

 if (instance->mask_interrupts)
  return IRQ_NONE;

 if (!instance->msix_vectors) {
  mfiStatus = instance->instancet->clear_intr(instance->reg_set);
  if (!mfiStatus)
   return IRQ_NONE;
 }


 if (test_bit(MEGASAS_FUSION_IN_RESET, &instance->reset_flags)) {
  instance->instancet->clear_intr(instance->reg_set);
  return IRQ_HANDLED;
 }

 if (!complete_cmd_fusion(instance, irq_context->MSIxIndex)) {
  instance->instancet->clear_intr(instance->reg_set);

  fw_state = instance->instancet->read_fw_status_reg(
   instance->reg_set) & MFI_STATE_MASK;
  if (fw_state == MFI_STATE_FAULT)
   schedule_work(&instance->work_init);
 }

 return IRQ_HANDLED;
}
