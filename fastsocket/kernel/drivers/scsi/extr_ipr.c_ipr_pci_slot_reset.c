
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {TYPE_1__* host; scalar_t__ needs_warm_reset; } ;
typedef int pci_ers_result_t ;
struct TYPE_2__ {int host_lock; } ;


 int IPR_SHUTDOWN_NONE ;
 int PCI_ERS_RESULT_RECOVERED ;
 int _ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ,int ) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int ipr_reset_restore_cfg_space ;
 struct ipr_ioa_cfg* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static pci_ers_result_t ipr_pci_slot_reset(struct pci_dev *pdev)
{
 unsigned long flags = 0;
 struct ipr_ioa_cfg *ioa_cfg = pci_get_drvdata(pdev);

 spin_lock_irqsave(ioa_cfg->host->host_lock, flags);
 if (ioa_cfg->needs_warm_reset)
  ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);
 else
  _ipr_initiate_ioa_reset(ioa_cfg, ipr_reset_restore_cfg_space,
     IPR_SHUTDOWN_NONE);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, flags);
 return PCI_ERS_RESULT_RECOVERED;
}
