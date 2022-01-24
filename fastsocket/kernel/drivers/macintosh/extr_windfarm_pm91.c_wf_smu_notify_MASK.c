#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wf_sensor {int /*<<< orphan*/  name; } ;
struct wf_control {int /*<<< orphan*/  name; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  WF_EVENT_NEW_CONTROL 130 
#define  WF_EVENT_NEW_SENSOR 129 
#define  WF_EVENT_TICK 128 
 int /*<<< orphan*/  wf_smu_all_controls_ok ; 
 int /*<<< orphan*/  wf_smu_all_sensors_ok ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int wf_smu_readjust ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct notifier_block *self,
			       unsigned long event, void *data)
{
	switch(event) {
	case WF_EVENT_NEW_CONTROL:
		FUNC0("wf: new control %s detected\n",
		    ((struct wf_control *)data)->name);
		FUNC1(data);
		wf_smu_readjust = 1;
		break;
	case WF_EVENT_NEW_SENSOR:
		FUNC0("wf: new sensor %s detected\n",
		    ((struct wf_sensor *)data)->name);
		FUNC2(data);
		break;
	case WF_EVENT_TICK:
		if (wf_smu_all_controls_ok && wf_smu_all_sensors_ok)
			FUNC3();
	}

	return 0;
}