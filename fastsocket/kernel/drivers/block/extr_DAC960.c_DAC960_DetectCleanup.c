
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int HardwareType; size_t ControllerNumber; scalar_t__* disks; int PCIDevice; scalar_t__ IO_Address; scalar_t__ IRQ_Channel; scalar_t__ MemoryMappedAddress; int BaseAddress; int DmaPages; } ;
typedef TYPE_1__ DAC960_Controller_T ;



 int DAC960_BA_DisableInterrupts (int ) ;
 int ** DAC960_Controllers ;

 int DAC960_GEM_DisableInterrupts (int ) ;

 int DAC960_LA_DisableInterrupts (int ) ;

 int DAC960_LP_DisableInterrupts (int ) ;
 int DAC960_MaxLogicalDrives ;

 int DAC960_PD_DisableInterrupts (int ) ;

 int DAC960_PG_DisableInterrupts (int ) ;

 int free_dma_loaf (int ,int *) ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 int iounmap (scalar_t__) ;
 int kfree (TYPE_1__*) ;
 int pci_disable_device (int ) ;
 int put_disk (scalar_t__) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void DAC960_DetectCleanup(DAC960_Controller_T *Controller)
{
  int i;


  free_dma_loaf(Controller->PCIDevice, &Controller->DmaPages);
  if (Controller->MemoryMappedAddress) {
   switch(Controller->HardwareType)
   {
  case 133:
   DAC960_GEM_DisableInterrupts(Controller->BaseAddress);
   break;
  case 134:
   DAC960_BA_DisableInterrupts(Controller->BaseAddress);
   break;
  case 131:
   DAC960_LP_DisableInterrupts(Controller->BaseAddress);
   break;
  case 132:
   DAC960_LA_DisableInterrupts(Controller->BaseAddress);
   break;
  case 129:
   DAC960_PG_DisableInterrupts(Controller->BaseAddress);
   break;
  case 130:
   DAC960_PD_DisableInterrupts(Controller->BaseAddress);
   break;
  case 128:
   DAC960_PD_DisableInterrupts(Controller->BaseAddress);
   break;
   }
   iounmap(Controller->MemoryMappedAddress);
  }
  if (Controller->IRQ_Channel)
   free_irq(Controller->IRQ_Channel, Controller);
  if (Controller->IO_Address)
 release_region(Controller->IO_Address, 0x80);
  pci_disable_device(Controller->PCIDevice);
  for (i = 0; (i < DAC960_MaxLogicalDrives) && Controller->disks[i]; i++)
       put_disk(Controller->disks[i]);
  DAC960_Controllers[Controller->ControllerNumber] = ((void*)0);
  kfree(Controller);
}
