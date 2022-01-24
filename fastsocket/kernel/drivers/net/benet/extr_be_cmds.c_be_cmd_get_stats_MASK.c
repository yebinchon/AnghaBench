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
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; struct be_cmd_req_hdr* va; } ;
struct be_cmd_req_hdr {int version; } ;
struct be_adapter {int stats_cmd_sent; int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_ETH_GET_STATISTICS ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_cmd_req_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 

int FUNC6(struct be_adapter *adapter, struct be_dma_mem *nonemb_cmd)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_hdr *hdr;
	int status = 0;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC5(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	hdr = nonemb_cmd->va;

	FUNC2(hdr, CMD_SUBSYSTEM_ETH,
		OPCODE_ETH_GET_STATISTICS, nonemb_cmd->size, wrb, nonemb_cmd);

	/* version 1 of the cmd is not supported only by BE2 */
	if (!FUNC0(adapter))
		hdr->version = 1;

	FUNC1(adapter);
	adapter->stats_cmd_sent = true;

err:
	FUNC4(&adapter->mcc_lock);
	return status;
}