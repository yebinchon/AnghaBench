
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {scalar_t__ used; scalar_t__ mite_phys_addr; int pcidev; int * daq_io_addr; int * mite_io_addr; } ;


 int comedi_pci_disable (int ) ;
 int iounmap (int *) ;

void mite_unsetup(struct mite_struct *mite)
{


 if (!mite)
  return;

 if (mite->mite_io_addr) {
  iounmap(mite->mite_io_addr);
  mite->mite_io_addr = ((void*)0);
 }
 if (mite->daq_io_addr) {
  iounmap(mite->daq_io_addr);
  mite->daq_io_addr = ((void*)0);
 }
 if (mite->mite_phys_addr) {
  comedi_pci_disable(mite->pcidev);
  mite->mite_phys_addr = 0;
 }

 mite->used = 0;
}
