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
struct led_classdev {scalar_t__ trigger_data; } ;
struct bl_trig_notifier {int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bl_trig_notifier*) ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led)
{
	struct bl_trig_notifier *n =
		(struct bl_trig_notifier *) led->trigger_data;

	if (n) {
		FUNC0(&n->notifier);
		FUNC1(n);
	}
}