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
typedef  int /*<<< orphan*/  u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {struct be_cmd_req_acpi_wol_magic_config* va; } ;
struct be_cmd_req_acpi_wol_magic_config {int /*<<< orphan*/  magic_mac; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 

int FUNC6(struct be_adapter *adapter, u8 *mac,
				struct be_dma_mem *nonemb_cmd)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_acpi_wol_magic_config *req;
	int status;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC5(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = nonemb_cmd->va;

	FUNC1(&req->hdr, CMD_SUBSYSTEM_ETH,
		OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG, sizeof(*req), wrb,
		nonemb_cmd);
	FUNC2(req->magic_mac, mac, ETH_ALEN);

	status = FUNC0(adapter);

err:
	FUNC4(&adapter->mcc_lock);
	return status;
}