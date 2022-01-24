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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int chassis_id ; 
 scalar_t__ hdpu_chassis_id ; 
 scalar_t__ hdpu_slot_id ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int slot_id ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	slot_id = -1;
	chassis_id = -1;

	FUNC0("sky_slot_id", NULL);
	FUNC0("sky_chassis_id", NULL);

	hdpu_slot_id = 0;
	hdpu_chassis_id = 0;

	return 0;
}