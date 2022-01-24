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
struct i82975x_error_info {int errsts2; int errsts; int eap; int /*<<< orphan*/  derrsyn; scalar_t__ xeap; } ;
struct TYPE_2__ {int nr_channels; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (struct mem_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC4(struct mem_ctl_info *mci,
		struct i82975x_error_info *info, int handle_errors)
{
	int row, multi_chan, chan;

	multi_chan = mci->csrows[0].nr_channels - 1;

	if (!(info->errsts2 & 0x0003))
		return 0;

	if (!handle_errors)
		return 1;

	if ((info->errsts ^ info->errsts2) & 0x0003) {
		FUNC2(mci, "UE overwrote CE");
		info->errsts = info->errsts2;
	}

	chan = info->eap & 1;
	info->eap >>= 1;
	if (info->xeap )
		info->eap |= 0x80000000;
	info->eap >>= PAGE_SHIFT;
	row = FUNC0(mci, info->eap);

	if (info->errsts & 0x0002)
		FUNC3(mci, info->eap, 0, row, "i82975x UE");
	else
		FUNC1(mci, info->eap, 0, info->derrsyn, row,
				multi_chan ? chan : 0,
				"i82975x CE");

	return 1;
}