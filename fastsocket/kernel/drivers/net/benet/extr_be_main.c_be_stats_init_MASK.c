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
struct lancer_cmd_req_pport_stats {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/ * va; int /*<<< orphan*/  dma; } ;
struct be_cmd_req_get_stats_v1 {int dummy; } ;
struct be_cmd_req_get_stats_v0 {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; struct be_dma_mem stats_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC3(struct be_adapter *adapter)
{
	struct be_dma_mem *cmd = &adapter->stats_cmd;

	if (FUNC2(adapter))
		cmd->size = sizeof(struct lancer_cmd_req_pport_stats);
	else if (FUNC0(adapter))
		cmd->size = sizeof(struct be_cmd_req_get_stats_v0);
	else
		/* BE3 and Skyhawk */
		cmd->size = sizeof(struct be_cmd_req_get_stats_v1);

	cmd->va = FUNC1(&adapter->pdev->dev, cmd->size, &cmd->dma,
				     GFP_KERNEL | __GFP_ZERO);
	if (cmd->va == NULL)
		return -1;
	return 0;
}