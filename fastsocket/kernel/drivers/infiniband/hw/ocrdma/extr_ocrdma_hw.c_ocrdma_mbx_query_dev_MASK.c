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
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_mbx_query_config {int dummy; } ;
struct ocrdma_dev {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_QUERY_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_mqe*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_dev*,int /*<<< orphan*/ *,struct ocrdma_mbx_query_config*) ; 
 struct ocrdma_mqe* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_dev *dev)
{
	int status = -ENOMEM;
	struct ocrdma_mbx_query_config *rsp;
	struct ocrdma_mqe *cmd;

	cmd = FUNC2(OCRDMA_CMD_QUERY_CONFIG, sizeof(*cmd));
	if (!cmd)
		return status;
	status = FUNC3(dev, (struct ocrdma_mqe *)cmd);
	if (status)
		goto mbx_err;
	rsp = (struct ocrdma_mbx_query_config *)cmd;
	FUNC1(dev, &dev->attr, rsp);
mbx_err:
	FUNC0(cmd);
	return status;
}