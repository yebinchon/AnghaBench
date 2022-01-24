#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ControllerNumber; int /*<<< orphan*/ ** RequestQueue; int /*<<< orphan*/ * disks; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
 int DAC960_MAJOR ; 
 int DAC960_MaxLogicalDrives ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(DAC960_Controller_T *Controller)
{
  int MajorNumber = DAC960_MAJOR + Controller->ControllerNumber;
  int disk;

  /* does order matter when deleting gendisk and cleanup in request queue? */
  for (disk = 0; disk < DAC960_MaxLogicalDrives; disk++) {
	FUNC1(Controller->disks[disk]);
	FUNC0(Controller->RequestQueue[disk]);
	Controller->RequestQueue[disk] = NULL;
  }

  /*
    Unregister the Block Device Major Number for this DAC960 Controller.
  */
  FUNC2(MajorNumber, "dac960");
}