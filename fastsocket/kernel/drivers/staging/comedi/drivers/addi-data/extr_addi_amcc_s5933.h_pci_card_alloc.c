
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {int used; int pcidev; int * io_addr; } ;


 scalar_t__ comedi_pci_enable (int ,char*) ;
 int pci_resource_start (int ,int) ;
 int pci_set_master (int ) ;

int pci_card_alloc(struct pcilst_struct *amcc, int master)
{
 int i;

 if (!amcc)
  return -1;

 if (amcc->used)
  return 1;
 if (comedi_pci_enable(amcc->pcidev, "addi_amcc_s5933"))
  return -1;

 for (i = 0; i < 5; i++)
  amcc->io_addr[i] = pci_resource_start(amcc->pcidev, i);
 if (master)
  pci_set_master(amcc->pcidev);
 amcc->used = 1;

 return 0;
}
