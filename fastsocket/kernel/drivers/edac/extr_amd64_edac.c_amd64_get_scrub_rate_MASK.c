#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int /*<<< orphan*/  F3; } ;
struct TYPE_5__ {int x86; } ;
struct TYPE_4__ {int scrubval; int bandwidth; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SCRCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC2 (struct amd64_pvt*,int /*<<< orphan*/ ) ; 
 TYPE_1__* scrubrates ; 

__attribute__((used)) static int FUNC3(struct mem_ctl_info *mci)
{
	struct amd64_pvt *pvt = mci->pvt_info;
	u32 scrubval = 0;
	int i, retval = -EINVAL;

	/* F15h Erratum #505 */
	if (boot_cpu_data.x86 == 0x15)
		FUNC2(pvt, 0);

	FUNC1(pvt->F3, SCRCTRL, &scrubval);

	scrubval = scrubval & 0x001F;

	for (i = 0; i < FUNC0(scrubrates); i++) {
		if (scrubrates[i].scrubval == scrubval) {
			retval = scrubrates[i].bandwidth;
			break;
		}
	}
	return retval;
}