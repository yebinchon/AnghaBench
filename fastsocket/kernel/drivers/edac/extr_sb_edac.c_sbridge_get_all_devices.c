
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_id_table {int n_devs; scalar_t__ descr; } ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 struct pci_id_table* pci_dev_descr_sbridge_table ;
 int sbridge_get_onedevice (struct pci_dev**,int *,struct pci_id_table const*,int) ;
 int sbridge_put_all_devices () ;

__attribute__((used)) static int sbridge_get_all_devices(u8 *num_mc)
{
 int i, rc;
 struct pci_dev *pdev = ((void*)0);
 const struct pci_id_table *table = pci_dev_descr_sbridge_table;

 while (table && table->descr) {
  for (i = 0; i < table->n_devs; i++) {
   pdev = ((void*)0);
   do {
    rc = sbridge_get_onedevice(&pdev, num_mc,
          table, i);
    if (rc < 0) {
     if (i == 0) {
      i = table->n_devs;
      break;
     }
     sbridge_put_all_devices();
     return -ENODEV;
    }
   } while (pdev);
  }
  table++;
 }

 return 0;
}
