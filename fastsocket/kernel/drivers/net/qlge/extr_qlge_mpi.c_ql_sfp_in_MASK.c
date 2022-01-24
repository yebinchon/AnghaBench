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
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct mbox_params {int out_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ql_adapter*,struct mbox_params*) ; 

__attribute__((used)) static int FUNC2(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
	int status;

	mbcp->out_count = 5;

	status = FUNC1(qdev, mbcp);
	if (status)
		FUNC0(qdev, drv, qdev->ndev, "SFP in AEN broken!\n");
	else
		FUNC0(qdev, drv, qdev->ndev, "SFP insertion detected.\n");

	return status;
}