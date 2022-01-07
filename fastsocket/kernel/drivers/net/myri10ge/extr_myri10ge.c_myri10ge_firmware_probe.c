
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct myri10ge_priv {int tx_boundary; int fw_name; struct pci_dev* pdev; } ;


 int E2BIG ;
 int ENOSYS ;
 int MXGEFW_CMD_UNALIGNED_TEST ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,...) ;
 int myri10ge_dma_test (struct myri10ge_priv*,int ) ;
 int myri10ge_enable_ecrc (struct myri10ge_priv*) ;
 int myri10ge_fw_aligned ;
 int myri10ge_fw_unaligned ;
 int myri10ge_load_firmware (struct myri10ge_priv*,int) ;
 int pcie_get_readrq (struct pci_dev*) ;

__attribute__((used)) static void myri10ge_firmware_probe(struct myri10ge_priv *mgp)
{
 struct pci_dev *pdev = mgp->pdev;
 struct device *dev = &pdev->dev;
 int status;

 mgp->tx_boundary = 4096;




 status = pcie_get_readrq(pdev);
 if (status < 0) {
  dev_err(dev, "Couldn't read max read req size: %d\n", status);
  goto abort;
 }
 if (status != 4096) {
  dev_warn(dev, "Max Read Request size != 4096 (%d)\n", status);
  mgp->tx_boundary = 2048;
 }




 mgp->fw_name = myri10ge_fw_aligned;
 status = myri10ge_load_firmware(mgp, 1);
 if (status != 0) {
  goto abort;
 }




 myri10ge_enable_ecrc(mgp);






 status = myri10ge_dma_test(mgp, MXGEFW_CMD_UNALIGNED_TEST);
 if (status == 0)
  return;

 if (status != -E2BIG)
  dev_warn(dev, "DMA test failed: %d\n", status);
 if (status == -ENOSYS)
  dev_warn(dev, "Falling back to ethp! "
    "Please install up to date fw\n");
abort:

 mgp->tx_boundary = 2048;
 mgp->fw_name = myri10ge_fw_unaligned;

}
