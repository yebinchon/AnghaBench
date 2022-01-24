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
typedef  int /*<<< orphan*/  u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; struct be_cmd_write_flashrom* va; } ;
struct TYPE_2__ {void* data_buf_size; void* op_code; void* op_type; } ;
struct be_cmd_write_flashrom {TYPE_1__ params; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int flash_status; int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  flash_compl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_WRITE_FLASHROM ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, struct be_dma_mem *cmd,
			u32 flash_type, u32 flash_opcode, u32 buf_size)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_write_flashrom *req;
	int status;

	FUNC4(&adapter->mcc_lock);
	adapter->flash_status = 0;

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err_unlock;
	}
	req = cmd->va;

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
		OPCODE_COMMON_WRITE_FLASHROM, cmd->size, wrb, cmd);

	req->params.op_type = FUNC2(flash_type);
	req->params.op_code = FUNC2(flash_opcode);
	req->params.data_buf_size = FUNC2(buf_size);

	FUNC0(adapter);
	FUNC5(&adapter->mcc_lock);

	if (!FUNC6(&adapter->flash_compl,
			FUNC3(40000)))
		status = -1;
	else
		status = adapter->flash_status;

	return status;

err_unlock:
	FUNC5(&adapter->mcc_lock);
	return status;
}