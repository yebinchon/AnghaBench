#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_resp_get_fat* va; } ;
struct be_cmd_resp_get_fat {void* read_log_length; int /*<<< orphan*/  data_buffer; void* data_buffer_size; void* read_log_offset; void* fat_operation; int /*<<< orphan*/  hdr; } ;
struct be_cmd_req_get_fat {void* read_log_length; int /*<<< orphan*/  data_buffer; void* data_buffer_size; void* read_log_offset; void* fat_operation; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OPCODE_COMMON_MANAGE_FAT ; 
 scalar_t__ RETRIEVE_FAT ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct be_cmd_resp_get_fat* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,struct be_cmd_resp_get_fat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC11 (struct be_adapter*) ; 

void FUNC12(struct be_adapter *adapter, u32 buf_len, void *buf)
{
	struct be_dma_mem get_fat_cmd;
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_fat *req;
	u32 offset = 0, total_size, buf_size,
				log_offset = sizeof(u32), payload_len;
	int status;

	if (buf_len == 0)
		return;

	total_size = buf_len;

	get_fat_cmd.size = sizeof(struct be_cmd_req_get_fat) + 60*1024;
	get_fat_cmd.va = FUNC7(adapter->pdev,
			get_fat_cmd.size,
			&get_fat_cmd.dma);
	if (!get_fat_cmd.va) {
		status = -ENOMEM;
		FUNC3(&adapter->pdev->dev,
		"Memory allocation failure while retrieving FAT data\n");
		return;
	}

	FUNC9(&adapter->mcc_lock);

	while (total_size) {
		buf_size = FUNC6(total_size, (u32)60*1024);
		total_size -= buf_size;

		wrb = FUNC11(adapter);
		if (!wrb) {
			status = -EBUSY;
			goto err;
		}
		req = get_fat_cmd.va;

		payload_len = sizeof(struct be_cmd_req_get_fat) + buf_size;
		FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
				OPCODE_COMMON_MANAGE_FAT, payload_len, wrb,
				&get_fat_cmd);

		req->fat_operation = FUNC2(RETRIEVE_FAT);
		req->read_log_offset = FUNC2(log_offset);
		req->read_log_length = FUNC2(buf_size);
		req->data_buffer_size = FUNC2(buf_size);

		status = FUNC0(adapter);
		if (!status) {
			struct be_cmd_resp_get_fat *resp = get_fat_cmd.va;
			FUNC5(buf + offset,
				resp->data_buffer,
				FUNC4(resp->read_log_length));
		} else {
			FUNC3(&adapter->pdev->dev, "FAT Table Retrieve error\n");
			goto err;
		}
		offset += buf_size;
		log_offset += buf_size;
	}
err:
	FUNC8(adapter->pdev, get_fat_cmd.size,
			get_fat_cmd.va,
			get_fat_cmd.dma);
	FUNC10(&adapter->mcc_lock);
}