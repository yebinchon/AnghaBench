#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ SAFTE_EnclosureManagementEnabled; int /*<<< orphan*/  GeometryTranslationSectors; int /*<<< orphan*/  GeometryTranslationHeads; int /*<<< orphan*/  SegmentSize; int /*<<< orphan*/  StripeSize; } ;
struct TYPE_6__ {scalar_t__ IO_Address; scalar_t__ FirmwareType; TYPE_1__ V1; int /*<<< orphan*/  ControllerScatterGatherLimit; int /*<<< orphan*/  DriverScatterGatherLimit; int /*<<< orphan*/  DriverQueueDepth; int /*<<< orphan*/  MaxBlocksPerCommand; int /*<<< orphan*/  ControllerQueueDepth; int /*<<< orphan*/  IRQ_Channel; scalar_t__ BaseAddress; int /*<<< orphan*/  PCI_Address; int /*<<< orphan*/  Function; int /*<<< orphan*/  Device; int /*<<< orphan*/  Bus; int /*<<< orphan*/  MemorySize; int /*<<< orphan*/  Channels; int /*<<< orphan*/  FirmwareVersion; int /*<<< orphan*/  ModelName; } ;
typedef  TYPE_2__ DAC960_Controller_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,...) ; 
 scalar_t__ DAC960_V1_Controller ; 

__attribute__((used)) static bool FUNC1(DAC960_Controller_T
						    *Controller)
{
  FUNC0("Configuring Mylex %s PCI RAID Controller\n",
	      Controller, Controller->ModelName);
  FUNC0("  Firmware Version: %s, Channels: %d, Memory Size: %dMB\n",
	      Controller, Controller->FirmwareVersion,
	      Controller->Channels, Controller->MemorySize);
  FUNC0("  PCI Bus: %d, Device: %d, Function: %d, I/O Address: ",
	      Controller, Controller->Bus,
	      Controller->Device, Controller->Function);
  if (Controller->IO_Address == 0)
    FUNC0("Unassigned\n", Controller);
  else FUNC0("0x%X\n", Controller, Controller->IO_Address);
  FUNC0("  PCI Address: 0x%X mapped at 0x%lX, IRQ Channel: %d\n",
	      Controller, Controller->PCI_Address,
	      (unsigned long) Controller->BaseAddress,
	      Controller->IRQ_Channel);
  FUNC0("  Controller Queue Depth: %d, "
	      "Maximum Blocks per Command: %d\n",
	      Controller, Controller->ControllerQueueDepth,
	      Controller->MaxBlocksPerCommand);
  FUNC0("  Driver Queue Depth: %d, "
	      "Scatter/Gather Limit: %d of %d Segments\n",
	      Controller, Controller->DriverQueueDepth,
	      Controller->DriverScatterGatherLimit,
	      Controller->ControllerScatterGatherLimit);
  if (Controller->FirmwareType == DAC960_V1_Controller)
    {
      FUNC0("  Stripe Size: %dKB, Segment Size: %dKB, "
		  "BIOS Geometry: %d/%d\n", Controller,
		  Controller->V1.StripeSize,
		  Controller->V1.SegmentSize,
		  Controller->V1.GeometryTranslationHeads,
		  Controller->V1.GeometryTranslationSectors);
      if (Controller->V1.SAFTE_EnclosureManagementEnabled)
	FUNC0("  SAF-TE Enclosure Management Enabled\n", Controller);
    }
  return true;
}