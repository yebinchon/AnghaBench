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
struct slot {scalar_t__ dev; struct slot* hotplug_slot; struct slot* info; } ;
struct hotplug_slot {struct slot* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slot*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hotplug_slot *hotplug_slot)
{
	struct slot *slot = hotplug_slot->private;

	FUNC0(slot->hotplug_slot->info);
	FUNC0(slot->hotplug_slot);
	if (slot->dev)
		FUNC1(slot->dev);
	FUNC0(slot);
}