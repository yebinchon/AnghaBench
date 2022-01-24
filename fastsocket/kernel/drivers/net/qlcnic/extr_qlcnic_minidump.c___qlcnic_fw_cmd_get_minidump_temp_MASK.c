#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLCNIC_CMD_GET_TEMP_HDR ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_cmd_args*) ; 
 int FUNC8 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC9(struct qlcnic_adapter *adapter,
					     u32 *buffer, u32 temp_size)
{
	int err = 0, i;
	void *tmp_addr;
	__le32 *tmp_buf;
	struct qlcnic_cmd_args cmd;
	dma_addr_t tmp_addr_t = 0;

	tmp_addr = FUNC4(&adapter->pdev->dev, temp_size,
				      &tmp_addr_t, GFP_KERNEL);
	if (!tmp_addr) {
		FUNC3(&adapter->pdev->dev,
			"Can't get memory for FW dump template\n");
		return -ENOMEM;
	}

	if (FUNC6(&cmd, adapter, QLCNIC_CMD_GET_TEMP_HDR)) {
		err = -ENOMEM;
		goto free_mem;
	}

	cmd.req.arg[1] = FUNC0(tmp_addr_t);
	cmd.req.arg[2] = FUNC1(tmp_addr_t);
	cmd.req.arg[3] = temp_size;
	err = FUNC8(adapter, &cmd);

	tmp_buf = tmp_addr;
	if (err == QLCNIC_RCODE_SUCCESS) {
		for (i = 0; i < temp_size / sizeof(u32); i++)
			*buffer++ = FUNC2(*tmp_buf++);
	}

	FUNC7(&cmd);

free_mem:
	FUNC5(&adapter->pdev->dev, temp_size, tmp_addr, tmp_addr_t);

	return err;
}