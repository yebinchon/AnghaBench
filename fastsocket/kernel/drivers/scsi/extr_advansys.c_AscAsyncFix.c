
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {char type; int id; int vendor; } ;
struct TYPE_3__ {int bug_fix_cntl; int init_sdtr; int pci_fix_asyn_xfer_always; int pci_fix_asyn_xfer; int iop_base; } ;
typedef int ASC_SCSI_BIT_ID_TYPE ;
typedef TYPE_1__ ASC_DVC_VAR ;


 int ASC_BUG_FIX_ASYN_USE_SYN ;
 int ASYN_SDTR_DATA_FIX_PCI_REV_AB ;
 int AscSetRunChipSynRegAtID (int ,int,int ) ;
 char TYPE_PROCESSOR ;
 char TYPE_ROM ;
 char TYPE_SCANNER ;
 char TYPE_TAPE ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void AscAsyncFix(ASC_DVC_VAR *asc_dvc, struct scsi_device *sdev)
{
 char type = sdev->type;
 ASC_SCSI_BIT_ID_TYPE tid_bits = 1 << sdev->id;

 if (!(asc_dvc->bug_fix_cntl & ASC_BUG_FIX_ASYN_USE_SYN))
  return;
 if (asc_dvc->init_sdtr & tid_bits)
  return;

 if ((type == TYPE_ROM) && (strncmp(sdev->vendor, "HP ", 3) == 0))
  asc_dvc->pci_fix_asyn_xfer_always |= tid_bits;

 asc_dvc->pci_fix_asyn_xfer |= tid_bits;
 if ((type == TYPE_PROCESSOR) || (type == TYPE_SCANNER) ||
     (type == TYPE_ROM) || (type == TYPE_TAPE))
  asc_dvc->pci_fix_asyn_xfer &= ~tid_bits;

 if (asc_dvc->pci_fix_asyn_xfer & tid_bits)
  AscSetRunChipSynRegAtID(asc_dvc->iop_base, sdev->id,
     ASYN_SDTR_DATA_FIX_PCI_REV_AB);
}
