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
struct cpuidle_governor {int /*<<< orphan*/  governor_list; int /*<<< orphan*/  rating; } ;

/* Variables and functions */
 struct cpuidle_governor* cpuidle_curr_governor ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 struct cpuidle_governor* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_governor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cpuidle_governor *gov)
{
	if (!gov)
		return;

	FUNC3(&cpuidle_lock);
	if (gov == cpuidle_curr_governor) {
		struct cpuidle_governor *new_gov;
		new_gov = FUNC0(gov->rating);
		FUNC1(new_gov);
	}
	FUNC2(&gov->governor_list);
	FUNC4(&cpuidle_lock);
}