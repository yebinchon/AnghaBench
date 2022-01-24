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
struct SmsMsgHdr_ST {int member_3; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  Msg ;

/* Variables and functions */
 int DEVICE_MODE_DVBT ; 
 int DEVICE_MODE_DVBT_BDA ; 
 int EINVAL ; 
 int /*<<< orphan*/  HIF_TASK ; 
 int /*<<< orphan*/  MSG_SW_RELOAD_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (void*,struct SmsMsgHdr_ST*,int) ; 

__attribute__((used)) static int FUNC2(void *context, int mode)
{
	struct SmsMsgHdr_ST Msg = { MSG_SW_RELOAD_REQ, 0, HIF_TASK,
			     sizeof(struct SmsMsgHdr_ST), 0 };

	if (mode < DEVICE_MODE_DVBT || mode > DEVICE_MODE_DVBT_BDA) {
		FUNC0("invalid firmware id specified %d", mode);
		return -EINVAL;
	}

	return FUNC1(context, &Msg, sizeof(Msg));
}