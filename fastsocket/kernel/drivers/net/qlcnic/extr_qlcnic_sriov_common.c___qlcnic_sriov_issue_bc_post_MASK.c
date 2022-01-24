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
typedef  int u32 ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QLC_BC_VF_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_vf_info *vf)
{
	int ret = -EBUSY;
	u32 timeout = 10000;

	do {
		if (!FUNC1(QLC_BC_VF_CHANNEL, &vf->state)) {
			ret = 0;
			break;
		}
		FUNC0(1);
	} while (--timeout);

	return ret;
}