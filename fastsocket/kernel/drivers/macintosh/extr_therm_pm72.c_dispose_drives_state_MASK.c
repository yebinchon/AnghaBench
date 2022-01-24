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
struct drives_pid_state {int /*<<< orphan*/ * monitor; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_drives_fan_rpm ; 
 int /*<<< orphan*/  dev_attr_drives_temperature ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* of_dev ; 

__attribute__((used)) static void FUNC1(struct drives_pid_state *state)
{
	if (state->monitor == NULL)
		return;

	FUNC0(&of_dev->dev, &dev_attr_drives_temperature);
	FUNC0(&of_dev->dev, &dev_attr_drives_fan_rpm);

	state->monitor = NULL;
}