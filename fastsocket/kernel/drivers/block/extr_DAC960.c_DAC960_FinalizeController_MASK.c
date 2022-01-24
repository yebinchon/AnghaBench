#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int ShutdownMonitoringTimer; scalar_t__ FirmwareType; scalar_t__ HardwareType; int /*<<< orphan*/  IO_Address; int /*<<< orphan*/  MonitoringTimer; int /*<<< orphan*/  queue_lock; scalar_t__ ControllerInitialized; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 scalar_t__ DAC960_PD_Controller ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ DAC960_V1_Controller ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DAC960_V1_Flush ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DAC960_V2_PauseDevice ; 
 int /*<<< orphan*/  DAC960_V2_RAID_Controller ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(DAC960_Controller_T *Controller)
{
  if (Controller->ControllerInitialized)
    {
      unsigned long flags;

      /*
       * Acquiring and releasing lock here eliminates
       * a very low probability race.
       *
       * The code below allocates controller command structures
       * from the free list without holding the controller lock.
       * This is safe assuming there is no other activity on
       * the controller at the time.
       * 
       * But, there might be a monitoring command still
       * in progress.  Setting the Shutdown flag while holding
       * the lock ensures that there is no monitoring command
       * in the interrupt handler currently, and any monitoring
       * commands that complete from this time on will NOT return
       * their command structure to the free list.
       */

      FUNC9(&Controller->queue_lock, flags);
      Controller->ShutdownMonitoringTimer = 1;
      FUNC10(&Controller->queue_lock, flags);

      FUNC7(&Controller->MonitoringTimer);
      if (Controller->FirmwareType == DAC960_V1_Controller)
	{
	  FUNC3("Flushing Cache...", Controller);
	  FUNC5(Controller, DAC960_V1_Flush, 0);
	  FUNC3("done\n", Controller);

	  if (Controller->HardwareType == DAC960_PD_Controller)
	      FUNC8(Controller->IO_Address, 0x80);
	}
      else
	{
	  FUNC3("Flushing Cache...", Controller);
	  FUNC6(Controller, DAC960_V2_PauseDevice,
				    DAC960_V2_RAID_Controller);
	  FUNC3("done\n", Controller);
	}
    }
  FUNC4(Controller);
  FUNC0(Controller);
  FUNC1(Controller);
  FUNC2(Controller);
}