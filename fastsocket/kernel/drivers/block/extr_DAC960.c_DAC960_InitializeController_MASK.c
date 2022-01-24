#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct TYPE_11__ {int ControllerInitialized; TYPE_2__ MonitoringTimer; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DAC960_MonitoringTimerFunction ; 
 scalar_t__ DAC960_MonitoringTimerInterval ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static bool 
FUNC8(DAC960_Controller_T *Controller)
{
  if (FUNC1(Controller) &&
      FUNC4(Controller) &&
      FUNC0(Controller) &&
      FUNC2(Controller) &&
      FUNC5(Controller) &&
      FUNC3(Controller))
    {
      /*
	Initialize the Monitoring Timer.
      */
      FUNC7(&Controller->MonitoringTimer);
      Controller->MonitoringTimer.expires =
	jiffies + DAC960_MonitoringTimerInterval;
      Controller->MonitoringTimer.data = (unsigned long) Controller;
      Controller->MonitoringTimer.function = DAC960_MonitoringTimerFunction;
      FUNC6(&Controller->MonitoringTimer);
      Controller->ControllerInitialized = true;
      return true;
    }
  return false;
}