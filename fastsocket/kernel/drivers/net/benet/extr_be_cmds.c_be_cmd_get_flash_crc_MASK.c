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
struct TYPE_2__ {void* data_buf_size; void* offset; void* op_code; void* op_type; } ;
struct be_cmd_read_flash_crc {int /*<<< orphan*/  crc; TYPE_1__ params; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int FLASHROM_OPER_REPORT ; 
 int /*<<< orphan*/  OPCODE_COMMON_READ_FLASHROM ; 
 int OPTYPE_REDBOOT ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 struct be_cmd_read_flash_crc* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, u8 *flashed_crc,
			 int offset)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_read_flash_crc *req;
	int status;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_READ_FLASHROM, sizeof(*req),
			       wrb, NULL);

	req->params.op_type = FUNC2(OPTYPE_REDBOOT);
	req->params.op_code = FUNC2(FLASHROM_OPER_REPORT);
	req->params.offset = FUNC2(offset);
	req->params.data_buf_size = FUNC2(0x4);

	status = FUNC0(adapter);
	if (!status)
		FUNC4(flashed_crc, req->crc, 4);

err:
	FUNC6(&adapter->mcc_lock);
	return status;
}