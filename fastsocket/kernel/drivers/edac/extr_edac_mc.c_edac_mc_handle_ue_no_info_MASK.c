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
struct mem_ctl_info {int /*<<< orphan*/  ue_count; int /*<<< orphan*/  ue_noinfo_count; int /*<<< orphan*/  mc_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct mem_ctl_info *mci, const char *msg)
{
	if (FUNC1())
		FUNC3("EDAC MC%d: Uncorrected Error", mci->mc_idx);

	if (FUNC0())
		FUNC2(mci, KERN_WARNING,
			"UE - no information available: %s\n", msg);
	mci->ue_noinfo_count++;
	mci->ue_count++;
}