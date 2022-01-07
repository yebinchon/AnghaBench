
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct driver_data {int remove_list; int dd_flag; int online_list; } ;


 int MTIP_ABAR ;
 int MTIP_DDF_CLEANUP_BIT ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int dev_lock ;
 int kfree (struct driver_data*) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int msleep (int) ;
 int mtip_block_remove (struct driver_data*) ;
 scalar_t__ mtip_check_surprise_removal (struct pci_dev*) ;
 int mtip_command_cleanup (struct driver_data*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct driver_data* pci_get_drvdata (struct pci_dev*) ;
 int pcim_iounmap_regions (struct pci_dev*,int) ;
 int removing_list ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mtip_pci_remove(struct pci_dev *pdev)
{
 struct driver_data *dd = pci_get_drvdata(pdev);
 int counter = 0;
 unsigned long flags;

 set_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag);

 spin_lock_irqsave(&dev_lock, flags);
 list_del_init(&dd->online_list);
 list_add(&dd->remove_list, &removing_list);
 spin_unlock_irqrestore(&dev_lock, flags);

 if (mtip_check_surprise_removal(pdev)) {
  while (!test_bit(MTIP_DDF_CLEANUP_BIT, &dd->dd_flag)) {
   counter++;
   msleep(20);
   if (counter == 10) {

    mtip_command_cleanup(dd);
    break;
   }
  }
 }


 mtip_block_remove(dd);

 pci_disable_msi(pdev);

 spin_lock_irqsave(&dev_lock, flags);
 list_del_init(&dd->remove_list);
 spin_unlock_irqrestore(&dev_lock, flags);

 kfree(dd);
 pcim_iounmap_regions(pdev, 1 << MTIP_ABAR);
}
