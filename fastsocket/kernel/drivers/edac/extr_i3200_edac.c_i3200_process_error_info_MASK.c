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
typedef  int u64 ;
struct mem_ctl_info {int dummy; } ;
struct i3200_error_info {int errsts; int errsts2; int* eccerrlog; } ;

/* Variables and functions */
 int I3200_ECCERRLOG_CE ; 
 int I3200_ECCERRLOG_UE ; 
 int I3200_ERRSTS_BITS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int nr_channels ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci,
		struct i3200_error_info *info)
{
	int channel;
	u64 log;

	if (!(info->errsts & I3200_ERRSTS_BITS))
		return;

	if ((info->errsts ^ info->errsts2) & I3200_ERRSTS_BITS) {
		FUNC3(mci, "UE overwrote CE");
		info->errsts = info->errsts2;
	}

	for (channel = 0; channel < nr_channels; channel++) {
		log = info->eccerrlog[channel];
		if (log & I3200_ECCERRLOG_UE) {
			FUNC4(mci, 0, 0,
				FUNC0(channel, log),
				"i3200 UE");
		} else if (log & I3200_ECCERRLOG_CE) {
			FUNC2(mci, 0, 0,
				FUNC1(log),
				FUNC0(channel, log), 0,
				"i3200 CE");
		}
	}
}