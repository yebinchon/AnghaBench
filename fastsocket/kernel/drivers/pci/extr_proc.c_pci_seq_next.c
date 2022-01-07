
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef void pci_dev ;
typedef int loff_t ;


 int PCI_ANY_ID ;
 void* pci_get_device (int ,int ,void*) ;

__attribute__((used)) static void *pci_seq_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct pci_dev *dev = v;

 (*pos)++;
 dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, dev);
 return dev;
}
