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
typedef  int u8 ;
struct chan_freq_power {int channel; scalar_t__ unsupported; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_11D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct chan_freq_power* FUNC2 (int,int*) ; 

__attribute__((used)) static u8 FUNC3(u8 region, u8 chan)
{
	struct chan_freq_power *cfp;
	int cfp_no;
	u8 idx;
	int ret = 0;

	FUNC0(LBS_DEB_11D);

	cfp = FUNC2(region, &cfp_no);
	if (cfp == NULL)
		return 0;

	for (idx = 0; idx < cfp_no; idx++) {
		if (chan == (cfp + idx)->channel) {
			/* If Mrvl Chip Supported? */
			if ((cfp + idx)->unsupported) {
				ret = 0;
			} else {
				ret = 1;
			}
			goto done;
		}
	}

	/*chan is not in the region table */

done:
	FUNC1(LBS_DEB_11D, "ret %d", ret);
	return ret;
}