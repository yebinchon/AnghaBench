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
typedef  size_t u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_port_name {size_t* port_name; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_get_port_name {TYPE_1__ hdr; } ;
struct be_adapter {size_t hba_port_num; int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_PORT_NAME ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, u8 *port_name)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_port_name *req;
	int status;

	if (!FUNC3(adapter)) {
		*port_name = adapter->hba_port_num + '0';
		return 0;
	}

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_PORT_NAME, sizeof(*req), wrb,
			       NULL);
	req->hdr.version = 1;

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_get_port_name *resp = FUNC2(wrb);
		*port_name = resp->port_name[adapter->hba_port_num];
	} else {
		*port_name = adapter->hba_port_num + '0';
	}
err:
	FUNC5(&adapter->mcc_lock);
	return status;
}