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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_loopback_test {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {void* timeout; } ;
struct be_cmd_req_loopback_test {void* loopback_type; void* num_pkts; void* pkt_size; void* dest_port; void* src_port; int /*<<< orphan*/  pattern; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_LOWLEVEL ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_LOWLEVEL_LOOPBACK_TEST ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct be_mcc_wrb*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u32 port_num,
		u32 loopback_type, u32 pkt_size, u32 num_pkts, u64 pattern)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_loopback_test *req;
	int status;

	FUNC6(&adapter->mcc_lock);

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC4(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
			OPCODE_LOWLEVEL_LOOPBACK_TEST, sizeof(*req), wrb, NULL);
	req->hdr.timeout = FUNC2(4);

	req->pattern = FUNC3(pattern);
	req->src_port = FUNC2(port_num);
	req->dest_port = FUNC2(port_num);
	req->pkt_size = FUNC2(pkt_size);
	req->num_pkts = FUNC2(num_pkts);
	req->loopback_type = FUNC2(loopback_type);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_loopback_test *resp = FUNC4(wrb);
		status = FUNC5(resp->status);
	}

err:
	FUNC7(&adapter->mcc_lock);
	return status;
}