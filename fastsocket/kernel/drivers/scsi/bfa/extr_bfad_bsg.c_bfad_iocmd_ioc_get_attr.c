
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* chip_rev; } ;
struct TYPE_7__ {int ioc; } ;
struct bfad_s {TYPE_5__ pci_attr; int bfad_lock; TYPE_1__ bfa; } ;
struct bfa_ioc_pci_attr_s {int dummy; } ;
struct TYPE_10__ {TYPE_5__* chip_rev; } ;
struct TYPE_9__ {int optrom_ver; int fw_ver; } ;
struct TYPE_8__ {int bios_ver; int fw_ver; int driver_ver; int driver; } ;
struct TYPE_12__ {TYPE_4__ pci_attr; TYPE_3__ adapter_attr; TYPE_2__ driver_attr; } ;
struct bfa_bsg_ioc_attr_s {int status; TYPE_6__ ioc_attr; } ;


 int BFAD_DRIVER_NAME ;
 int BFAD_DRIVER_VERSION ;
 int BFA_STATUS_OK ;
 int BFA_VERSION_LEN ;
 int bfa_ioc_get_attr (int *,TYPE_6__*) ;
 int memcpy (TYPE_4__*,TYPE_5__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,int ) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int
bfad_iocmd_ioc_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_ioc_attr_s *iocmd = (struct bfa_bsg_ioc_attr_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_ioc_get_attr(&bfad->bfa.ioc, &iocmd->ioc_attr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);


 strcpy(iocmd->ioc_attr.driver_attr.driver, BFAD_DRIVER_NAME);
 strncpy(iocmd->ioc_attr.driver_attr.driver_ver,
  BFAD_DRIVER_VERSION, BFA_VERSION_LEN);
 strcpy(iocmd->ioc_attr.driver_attr.fw_ver,
  iocmd->ioc_attr.adapter_attr.fw_ver);
 strcpy(iocmd->ioc_attr.driver_attr.bios_ver,
  iocmd->ioc_attr.adapter_attr.optrom_ver);


 memcpy(bfad->pci_attr.chip_rev, iocmd->ioc_attr.pci_attr.chip_rev,
  sizeof(bfad->pci_attr.chip_rev));
 memcpy(&iocmd->ioc_attr.pci_attr, &bfad->pci_attr,
  sizeof(struct bfa_ioc_pci_attr_s));

 iocmd->status = BFA_STATUS_OK;
 return 0;
}
