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
struct TYPE_2__ {int /*<<< orphan*/ * cmd; } ;
struct ocrdma_mqe {TYPE_1__ u; } ;
struct ocrdma_mbx_hdr {int dummy; } ;
struct ocrdma_fw_conf_rsp {int dummy; } ;
struct ocrdma_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_GET_FW_CONFIG ; 
 int /*<<< orphan*/  OCRDMA_SUBSYS_COMMON ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_mqe*) ; 
 int FUNC1 (struct ocrdma_dev*,struct ocrdma_fw_conf_rsp*) ; 
 struct ocrdma_mqe* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_mbx_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

__attribute__((used)) static int FUNC5(struct ocrdma_dev *dev)
{
	int status = -ENOMEM;
	struct ocrdma_mqe *cmd;
	struct ocrdma_fw_conf_rsp *rsp;

	cmd = FUNC2(OCRDMA_CMD_GET_FW_CONFIG, sizeof(*cmd));
	if (!cmd)
		return -ENOMEM;
	FUNC3((struct ocrdma_mbx_hdr *)&cmd->u.cmd[0],
			OCRDMA_CMD_GET_FW_CONFIG,
			OCRDMA_SUBSYS_COMMON, sizeof(*cmd));
	status = FUNC4(dev, (struct ocrdma_mqe *)cmd);
	if (status)
		goto mbx_err;
	rsp = (struct ocrdma_fw_conf_rsp *)cmd;
	status = FUNC1(dev, rsp);
mbx_err:
	FUNC0(cmd);
	return status;
}