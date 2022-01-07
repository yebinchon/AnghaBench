
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {TYPE_1__* reg_set; TYPE_2__* pdev; } ;
struct TYPE_4__ {scalar_t__ device; } ;
struct TYPE_3__ {int inbound_doorbell; int doorbell; } ;


 int MFI_STOP_ADP ;
 scalar_t__ PCI_DEVICE_ID_LSI_FURY ;
 scalar_t__ PCI_DEVICE_ID_LSI_FUSION ;
 scalar_t__ PCI_DEVICE_ID_LSI_INVADER ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0071SKINNY ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0073SKINNY ;
 int writel (int ,int *) ;

void megaraid_sas_kill_hba(struct megasas_instance *instance)
{
 if ((instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0073SKINNY) ||
     (instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0071SKINNY) ||
     (instance->pdev->device == PCI_DEVICE_ID_LSI_FUSION) ||
     (instance->pdev->device == PCI_DEVICE_ID_LSI_INVADER) ||
     (instance->pdev->device == PCI_DEVICE_ID_LSI_FURY)) {
  writel(MFI_STOP_ADP, &instance->reg_set->doorbell);
 } else {
  writel(MFI_STOP_ADP, &instance->reg_set->inbound_doorbell);
 }
}
