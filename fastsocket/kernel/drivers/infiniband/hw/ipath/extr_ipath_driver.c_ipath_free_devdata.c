
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipath_devdata {int ipath_unit; int ipath_list; } ;


 int idr_remove (int *,int) ;
 int ipath_devs_lock ;
 int list_del (int *) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unit_table ;
 int vfree (struct ipath_devdata*) ;

__attribute__((used)) static void ipath_free_devdata(struct pci_dev *pdev,
          struct ipath_devdata *dd)
{
 unsigned long flags;

 pci_set_drvdata(pdev, ((void*)0));

 if (dd->ipath_unit != -1) {
  spin_lock_irqsave(&ipath_devs_lock, flags);
  idr_remove(&unit_table, dd->ipath_unit);
  list_del(&dd->ipath_list);
  spin_unlock_irqrestore(&ipath_devs_lock, flags);
 }
 vfree(dd);
}
