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
struct pmcraid_sglist {int /*<<< orphan*/  num_sg; int /*<<< orphan*/  scatterlist; } ;
struct pmcraid_cmd {struct pmcraid_sglist* sglist; TYPE_1__* drv_inst; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pmcraid_sglist*) ; 

__attribute__((used)) static void FUNC2(
	struct pmcraid_cmd *cmd,
	int buflen,
	int direction
)
{
	struct pmcraid_sglist *sglist = cmd->sglist;

	if (buflen > 0) {
		FUNC0(cmd->drv_inst->pdev,
			     sglist->scatterlist,
			     sglist->num_sg,
			     direction);
		FUNC1(sglist);
		cmd->sglist = NULL;
	}
}