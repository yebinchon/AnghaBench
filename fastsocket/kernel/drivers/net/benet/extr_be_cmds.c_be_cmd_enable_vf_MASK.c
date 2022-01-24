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
typedef  int /*<<< orphan*/  u8 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct be_cmd_enable_disable_vf {int enable; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_ENABLE_DISABLE_VF ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_enable_disable_vf* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, u8 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_enable_disable_vf *req;
	int status;

	if (FUNC0(adapter))
		return 0;

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC3(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_ENABLE_DISABLE_VF, sizeof(*req),
			       wrb, NULL);

	req->hdr.domain = domain;
	req->enable = 1;
	status = FUNC1(adapter);
err:
	FUNC5(&adapter->mcc_lock);
	return status;
}