
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ bc_ver; } ;
struct bnx2x {TYPE_1__ common; struct pci_dev* pdev; } ;


 int BNX2X_DEV_INFO (char*) ;
 int BNX2X_ERR (char*,scalar_t__) ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int DRV_MSG_CODE_INITIATE_FLR ;
 int EINVAL ;
 int PCI_EXP_DEVSTA ;
 int PCI_EXP_DEVSTA_TRPND ;
 scalar_t__ REQ_BC_VER_4_INITIATE_FLR ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int bnx2x_do_flr(struct bnx2x *bp)
{
 int i;
 u16 status;
 struct pci_dev *dev = bp->pdev;

 if (CHIP_IS_E1x(bp)) {
  BNX2X_DEV_INFO("FLR not supported in E1/E1H\n");
  return -EINVAL;
 }


 if (bp->common.bc_ver < REQ_BC_VER_4_INITIATE_FLR) {
  BNX2X_ERR("FLR not supported by BC_VER: 0x%x\n",
     bp->common.bc_ver);
  return -EINVAL;
 }


 for (i = 0; i < 4; i++) {
  if (i)
   msleep((1 << (i - 1)) * 100);

  pcie_capability_read_word(dev, PCI_EXP_DEVSTA, &status);
  if (!(status & PCI_EXP_DEVSTA_TRPND))
   goto clear;
 }

 dev_err(&dev->dev,
  "transaction is not cleared; proceeding with reset anyway\n");

clear:

 BNX2X_DEV_INFO("Initiating FLR\n");
 bnx2x_fw_command(bp, DRV_MSG_CODE_INITIATE_FLR, 0);

 return 0;
}
