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
struct mem_ctl_info {TYPE_1__* csrows; } ;
struct i3000_error_info {int errsts; int errsts2; int /*<<< orphan*/  derrsyn; int /*<<< orphan*/  deap; int /*<<< orphan*/  edeap; } ;
struct TYPE_2__ {int nr_channels; } ;

/* Variables and functions */
 int I3000_ERRSTS_BITS ; 
 int I3000_ERRSTS_UE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mem_ctl_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_ctl_info*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_ctl_info*,unsigned long,unsigned long,int,char*) ; 

__attribute__((used)) static int FUNC7(struct mem_ctl_info *mci,
				struct i3000_error_info *info,
				int handle_errors)
{
	int row, multi_chan, channel;
	unsigned long pfn, offset;

	multi_chan = mci->csrows[0].nr_channels - 1;

	if (!(info->errsts & I3000_ERRSTS_BITS))
		return 0;

	if (!handle_errors)
		return 1;

	if ((info->errsts ^ info->errsts2) & I3000_ERRSTS_BITS) {
		FUNC5(mci, "UE overwrote CE");
		info->errsts = info->errsts2;
	}

	pfn = FUNC2(info->edeap, info->deap);
	offset = FUNC1(info->deap);
	channel = FUNC0(info->deap);

	row = FUNC3(mci, pfn);

	if (info->errsts & I3000_ERRSTS_UE)
		FUNC6(mci, pfn, offset, row, "i3000 UE");
	else
		FUNC4(mci, pfn, offset, info->derrsyn, row,
				multi_chan ? channel : 0, "i3000 CE");

	return 1;
}