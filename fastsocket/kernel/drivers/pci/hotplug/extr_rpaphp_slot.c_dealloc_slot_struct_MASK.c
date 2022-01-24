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
struct slot {struct slot* hotplug_slot; struct slot* name; struct slot* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slot*) ; 

void FUNC1(struct slot *slot)
{
	FUNC0(slot->hotplug_slot->info);
	FUNC0(slot->name);
	FUNC0(slot->hotplug_slot);
	FUNC0(slot);
}