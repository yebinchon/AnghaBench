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
struct pmcraid_instance {TYPE_1__* host; } ;
struct pmcraid_cmd {struct pmcraid_instance* drv_inst; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	unsigned long lock_flags;

	FUNC1(pinstance->host->host_lock, lock_flags);
	FUNC0(cmd);
	FUNC2(pinstance->host->host_lock, lock_flags);
}