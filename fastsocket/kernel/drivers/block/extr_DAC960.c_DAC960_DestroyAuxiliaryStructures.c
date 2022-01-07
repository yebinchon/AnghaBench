
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pci_pool {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_9__ {int RequestSenseDMA; scalar_t__ RequestSense; int ScatterGatherListDMA; scalar_t__ ScatterGatherList; } ;
struct TYPE_8__ {int ScatterGatherListDMA; scalar_t__ ScatterGatherList; } ;
struct TYPE_12__ {int CommandIdentifier; TYPE_2__ V2; TYPE_1__ V1; } ;
struct TYPE_10__ {TYPE_5__** InquiryUnitSerialNumber; TYPE_5__** PhysicalDeviceInformation; TYPE_5__** LogicalDeviceInformation; struct pci_pool* RequestSensePool; } ;
struct TYPE_11__ {scalar_t__ FirmwareType; int DriverQueueDepth; int CommandAllocationGroupSize; TYPE_3__ V2; int * CurrentStatusBuffer; TYPE_5__* CombinedStatusBuffer; TYPE_5__** Commands; int * FreeCommands; struct pci_pool* ScatterGatherPool; } ;
typedef TYPE_4__ DAC960_Controller_T ;
typedef TYPE_5__ DAC960_Command_T ;


 int DAC960_MaxLogicalDrives ;
 scalar_t__ DAC960_V1_Controller ;
 scalar_t__ DAC960_V2_Controller ;
 int DAC960_V2_MaxPhysicalDevices ;
 int kfree (TYPE_5__*) ;
 int pci_pool_destroy (struct pci_pool*) ;
 int pci_pool_free (struct pci_pool*,void*,int ) ;

__attribute__((used)) static void DAC960_DestroyAuxiliaryStructures(DAC960_Controller_T *Controller)
{
  int i;
  struct pci_pool *ScatterGatherPool = Controller->ScatterGatherPool;
  struct pci_pool *RequestSensePool = ((void*)0);
  void *ScatterGatherCPU;
  dma_addr_t ScatterGatherDMA;
  void *RequestSenseCPU;
  dma_addr_t RequestSenseDMA;
  DAC960_Command_T *CommandGroup = ((void*)0);


  if (Controller->FirmwareType == DAC960_V2_Controller)
        RequestSensePool = Controller->V2.RequestSensePool;

  Controller->FreeCommands = ((void*)0);
  for (i = 0; i < Controller->DriverQueueDepth; i++)
    {
      DAC960_Command_T *Command = Controller->Commands[i];

      if (Command == ((void*)0))
   continue;

      if (Controller->FirmwareType == DAC960_V1_Controller) {
   ScatterGatherCPU = (void *)Command->V1.ScatterGatherList;
   ScatterGatherDMA = Command->V1.ScatterGatherListDMA;
   RequestSenseCPU = ((void*)0);
   RequestSenseDMA = (dma_addr_t)0;
      } else {
          ScatterGatherCPU = (void *)Command->V2.ScatterGatherList;
   ScatterGatherDMA = Command->V2.ScatterGatherListDMA;
   RequestSenseCPU = (void *)Command->V2.RequestSense;
   RequestSenseDMA = Command->V2.RequestSenseDMA;
      }
      if (ScatterGatherCPU != ((void*)0))
          pci_pool_free(ScatterGatherPool, ScatterGatherCPU, ScatterGatherDMA);
      if (RequestSenseCPU != ((void*)0))
          pci_pool_free(RequestSensePool, RequestSenseCPU, RequestSenseDMA);

      if ((Command->CommandIdentifier
    % Controller->CommandAllocationGroupSize) == 1) {






    kfree(CommandGroup);
    CommandGroup = Command;
      }
      Controller->Commands[i] = ((void*)0);
    }
  kfree(CommandGroup);

  if (Controller->CombinedStatusBuffer != ((void*)0))
    {
      kfree(Controller->CombinedStatusBuffer);
      Controller->CombinedStatusBuffer = ((void*)0);
      Controller->CurrentStatusBuffer = ((void*)0);
    }

  if (ScatterGatherPool != ((void*)0))
   pci_pool_destroy(ScatterGatherPool);
  if (Controller->FirmwareType == DAC960_V1_Controller)
   return;

  if (RequestSensePool != ((void*)0))
 pci_pool_destroy(RequestSensePool);

  for (i = 0; i < DAC960_MaxLogicalDrives; i++) {
 kfree(Controller->V2.LogicalDeviceInformation[i]);
 Controller->V2.LogicalDeviceInformation[i] = ((void*)0);
  }

  for (i = 0; i < DAC960_V2_MaxPhysicalDevices; i++)
    {
      kfree(Controller->V2.PhysicalDeviceInformation[i]);
      Controller->V2.PhysicalDeviceInformation[i] = ((void*)0);
      kfree(Controller->V2.InquiryUnitSerialNumber[i]);
      Controller->V2.InquiryUnitSerialNumber[i] = ((void*)0);
    }
}
