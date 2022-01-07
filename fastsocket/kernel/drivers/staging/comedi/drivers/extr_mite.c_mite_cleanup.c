
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {struct mite_struct* next; int pcidev; } ;


 int kfree (struct mite_struct*) ;
 struct mite_struct* mite_devices ;
 int pci_dev_put (int ) ;

void mite_cleanup(void)
{
 struct mite_struct *mite, *next;

 for (mite = mite_devices; mite; mite = next) {
  pci_dev_put(mite->pcidev);
  next = mite->next;
  kfree(mite);
 }
}
