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
struct sbridge_pvt {unsigned int mce_out; unsigned int mce_in; struct mce* mce_outentry; scalar_t__ mce_overrun; int /*<<< orphan*/ * mce_entry; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct mce {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned int MCE_LOG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct mce*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,struct mce*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci)
{
	struct sbridge_pvt *pvt = mci->pvt_info;
	int i;
	unsigned count = 0;
	struct mce *m;

	/*
	 * MCE first step: Copy all mce errors into a temporary buffer
	 * We use a double buffering here, to reduce the risk of
	 * loosing an error.
	 */
	FUNC3();
	count = (pvt->mce_out + MCE_LOG_LEN - pvt->mce_in)
		% MCE_LOG_LEN;
	if (!count)
		return;

	m = pvt->mce_outentry;
	if (pvt->mce_in + count > MCE_LOG_LEN) {
		unsigned l = MCE_LOG_LEN - pvt->mce_in;

		FUNC0(m, &pvt->mce_entry[pvt->mce_in], sizeof(*m) * l);
		FUNC4();
		pvt->mce_in = 0;
		count -= l;
		m += l;
	}
	FUNC0(m, &pvt->mce_entry[pvt->mce_in], sizeof(*m) * count);
	FUNC4();
	pvt->mce_in += count;

	FUNC3();
	if (pvt->mce_overrun) {
		FUNC2(KERN_ERR, "Lost %d memory errors\n",
			      pvt->mce_overrun);
		FUNC4();
		pvt->mce_overrun = 0;
	}

	/*
	 * MCE second step: parse errors and display
	 */
	for (i = 0; i < count; i++)
		FUNC1(mci, &pvt->mce_outentry[i]);
}