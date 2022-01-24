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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ wf_client_count ; 
 int /*<<< orphan*/  wf_client_list ; 
 int /*<<< orphan*/  wf_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct notifier_block *nb)
{
	FUNC1(&wf_lock);
	FUNC0(&wf_client_list, nb);
	wf_client_count++;
	if (wf_client_count == 0)
		FUNC3();
	FUNC2(&wf_lock);

	return 0;
}