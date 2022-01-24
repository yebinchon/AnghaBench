#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int HardwareType; size_t ControllerNumber; scalar_t__* disks; int /*<<< orphan*/  PCIDevice; scalar_t__ IO_Address; scalar_t__ IRQ_Channel; scalar_t__ MemoryMappedAddress; int /*<<< orphan*/  BaseAddress; int /*<<< orphan*/  DmaPages; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
#define  DAC960_BA_Controller 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** DAC960_Controllers ; 
#define  DAC960_GEM_Controller 133 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  DAC960_LA_Controller 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  DAC960_LP_Controller 131 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int DAC960_MaxLogicalDrives ; 
#define  DAC960_PD_Controller 130 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  DAC960_PG_Controller 129 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  DAC960_P_Controller 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC13(DAC960_Controller_T *Controller)
{
  int i;

  /* Free the memory mailbox, status, and related structures */
  FUNC6(Controller->PCIDevice, &Controller->DmaPages);
  if (Controller->MemoryMappedAddress) {
  	switch(Controller->HardwareType)
  	{
		case DAC960_GEM_Controller:
			FUNC1(Controller->BaseAddress);
			break;
		case DAC960_BA_Controller:
			FUNC0(Controller->BaseAddress);
			break;
		case DAC960_LP_Controller:
			FUNC3(Controller->BaseAddress);
			break;
		case DAC960_LA_Controller:
			FUNC2(Controller->BaseAddress);
			break;
		case DAC960_PG_Controller:
			FUNC5(Controller->BaseAddress);
			break;
		case DAC960_PD_Controller:
			FUNC4(Controller->BaseAddress);
			break;
		case DAC960_P_Controller:
			FUNC4(Controller->BaseAddress);
			break;
  	}
  	FUNC8(Controller->MemoryMappedAddress);
  }
  if (Controller->IRQ_Channel)
  	FUNC7(Controller->IRQ_Channel, Controller);
  if (Controller->IO_Address)
	FUNC12(Controller->IO_Address, 0x80);
  FUNC10(Controller->PCIDevice);
  for (i = 0; (i < DAC960_MaxLogicalDrives) && Controller->disks[i]; i++)
       FUNC11(Controller->disks[i]);
  DAC960_Controllers[Controller->ControllerNumber] = NULL;
  FUNC9(Controller);
}