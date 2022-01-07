
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct driver_data {int dd_flag; } ;
typedef int pm_message_t ;


 int EFAULT ;
 int MTIP_DDF_RESUME_BIT ;
 int PCI_D3hot ;
 int dev_err (int *,char*) ;
 int mtip_block_suspend (struct driver_data*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct driver_data* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mtip_pci_suspend(struct pci_dev *pdev, pm_message_t mesg)
{
 int rv = 0;
 struct driver_data *dd = pci_get_drvdata(pdev);

 if (!dd) {
  dev_err(&pdev->dev,
   "Driver private datastructure is NULL\n");
  return -EFAULT;
 }

 set_bit(MTIP_DDF_RESUME_BIT, &dd->dd_flag);


 rv = mtip_block_suspend(dd);
 if (rv < 0) {
  dev_err(&pdev->dev,
   "Failed to suspend controller\n");
  return rv;
 }





 pci_save_state(pdev);
 pci_disable_device(pdev);


 pci_set_power_state(pdev, PCI_D3hot);

 return rv;
}
