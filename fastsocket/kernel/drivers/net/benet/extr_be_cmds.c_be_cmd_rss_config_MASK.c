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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_rss_config {int /*<<< orphan*/  hash; int /*<<< orphan*/  cpu_table; TYPE_1__ hdr; void* cpu_table_size_log2; void* enable_rss; int /*<<< orphan*/  if_id; } ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  if_handle; } ;
typedef  int /*<<< orphan*/  myhash ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int /*<<< orphan*/  OPCODE_ETH_RSS_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_rss_config* FUNC5 (struct be_mcc_wrb*) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct be_adapter*) ; 
 struct be_mcc_wrb* FUNC12 (struct be_adapter*) ; 

int FUNC13(struct be_adapter *adapter, u8 *rsstable,
			u32 rss_hash_opts, u16 table_size)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_rss_config *req;
	u32 myhash[10] = {0x15d43fa5, 0x2534685a, 0x5f87693a, 0x5668494e,
			0x33cf6a53, 0x383334c6, 0x76ac4257, 0x59b242b2,
			0x3ea83c02, 0x4a110304};
	int status;

	if (FUNC9(&adapter->mbox_lock))
		return -1;

	wrb = FUNC12(adapter);
	req = FUNC5(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_ETH,
		OPCODE_ETH_RSS_CONFIG, sizeof(*req), wrb, NULL);

	req->if_id = FUNC4(adapter->if_handle);
	req->enable_rss = FUNC3(rss_hash_opts);
	req->cpu_table_size_log2 = FUNC3(FUNC6(table_size) - 1);

	if (FUNC7(adapter) || FUNC11(adapter))
		req->hdr.version = 1;

	FUNC8(req->cpu_table, rsstable, table_size);
	FUNC8(req->hash, myhash, sizeof(myhash));
	FUNC0(req->hash, sizeof(req->hash));

	status = FUNC1(adapter);

	FUNC10(&adapter->mbox_lock);
	return status;
}