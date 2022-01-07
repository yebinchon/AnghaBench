
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int DAC960_Controller_T ;


 int ** DAC960_Controllers ;
 int DAC960_FinalizeController (int *) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void DAC960_Remove(struct pci_dev *PCI_Device)
{
  int Controller_Number = (long)pci_get_drvdata(PCI_Device);
  DAC960_Controller_T *Controller = DAC960_Controllers[Controller_Number];
  if (Controller != ((void*)0))
      DAC960_FinalizeController(Controller);
}
