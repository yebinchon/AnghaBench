
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ SAFTE_EnclosureManagementEnabled; int GeometryTranslationSectors; int GeometryTranslationHeads; int SegmentSize; int StripeSize; } ;
struct TYPE_6__ {scalar_t__ IO_Address; scalar_t__ FirmwareType; TYPE_1__ V1; int ControllerScatterGatherLimit; int DriverScatterGatherLimit; int DriverQueueDepth; int MaxBlocksPerCommand; int ControllerQueueDepth; int IRQ_Channel; scalar_t__ BaseAddress; int PCI_Address; int Function; int Device; int Bus; int MemorySize; int Channels; int FirmwareVersion; int ModelName; } ;
typedef TYPE_2__ DAC960_Controller_T ;


 int DAC960_Info (char*,TYPE_2__*,...) ;
 scalar_t__ DAC960_V1_Controller ;

__attribute__((used)) static bool DAC960_ReportControllerConfiguration(DAC960_Controller_T
          *Controller)
{
  DAC960_Info("Configuring Mylex %s PCI RAID Controller\n",
       Controller, Controller->ModelName);
  DAC960_Info("  Firmware Version: %s, Channels: %d, Memory Size: %dMB\n",
       Controller, Controller->FirmwareVersion,
       Controller->Channels, Controller->MemorySize);
  DAC960_Info("  PCI Bus: %d, Device: %d, Function: %d, I/O Address: ",
       Controller, Controller->Bus,
       Controller->Device, Controller->Function);
  if (Controller->IO_Address == 0)
    DAC960_Info("Unassigned\n", Controller);
  else DAC960_Info("0x%X\n", Controller, Controller->IO_Address);
  DAC960_Info("  PCI Address: 0x%X mapped at 0x%lX, IRQ Channel: %d\n",
       Controller, Controller->PCI_Address,
       (unsigned long) Controller->BaseAddress,
       Controller->IRQ_Channel);
  DAC960_Info("  Controller Queue Depth: %d, "
       "Maximum Blocks per Command: %d\n",
       Controller, Controller->ControllerQueueDepth,
       Controller->MaxBlocksPerCommand);
  DAC960_Info("  Driver Queue Depth: %d, "
       "Scatter/Gather Limit: %d of %d Segments\n",
       Controller, Controller->DriverQueueDepth,
       Controller->DriverScatterGatherLimit,
       Controller->ControllerScatterGatherLimit);
  if (Controller->FirmwareType == DAC960_V1_Controller)
    {
      DAC960_Info("  Stripe Size: %dKB, Segment Size: %dKB, "
    "BIOS Geometry: %d/%d\n", Controller,
    Controller->V1.StripeSize,
    Controller->V1.SegmentSize,
    Controller->V1.GeometryTranslationHeads,
    Controller->V1.GeometryTranslationSectors);
      if (Controller->V1.SAFTE_EnclosureManagementEnabled)
 DAC960_Info("  SAF-TE Enclosure Management Enabled\n", Controller);
    }
  return 1;
}
