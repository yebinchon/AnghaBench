#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct led_classdev {struct heartbeat_trig_data* trigger_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct heartbeat_trig_data {TYPE_1__ timer; scalar_t__ phase; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct heartbeat_trig_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),unsigned long) ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev)
{
	struct heartbeat_trig_data *heartbeat_data;

	heartbeat_data = FUNC0(sizeof(*heartbeat_data), GFP_KERNEL);
	if (!heartbeat_data)
		return;

	led_cdev->trigger_data = heartbeat_data;
	FUNC2(&heartbeat_data->timer,
		    led_heartbeat_function, (unsigned long) led_cdev);
	heartbeat_data->phase = 0;
	FUNC1(heartbeat_data->timer.data);
}