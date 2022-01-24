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
struct smi_info {int run_to_completion; int /*<<< orphan*/  si_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smi_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void *send_info)
{
	struct smi_info *smi_info = send_info;
	unsigned long flags = 0;
	int run_to_completion = smi_info->run_to_completion;

	/*
	 * Make sure there is some delay in the poll loop so we can
	 * drive time forward and timeout things.
	 */
	FUNC3(10);
	if (!run_to_completion)
		FUNC1(&smi_info->si_lock, flags);
	FUNC0(smi_info, 10);
	if (!run_to_completion)
		FUNC2(&smi_info->si_lock, flags);
}