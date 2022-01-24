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
typedef  scalar_t__ u32 ;
struct megasas_instance {scalar_t__ ctrl_context; } ;
struct megasas_cmd_fusion {int /*<<< orphan*/  list; scalar_t__ sync_cmd_idx; int /*<<< orphan*/ * scmd; } ;
struct fusion_context {int /*<<< orphan*/  cmd_pool_lock; int /*<<< orphan*/  cmd_pool; } ;

/* Variables and functions */
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC3(struct megasas_instance *instance,
			  struct megasas_cmd_fusion *cmd)
{
	unsigned long flags;
	struct fusion_context *fusion =
		(struct fusion_context *)instance->ctrl_context;

	FUNC1(&fusion->cmd_pool_lock, flags);

	cmd->scmd = NULL;
	cmd->sync_cmd_idx = (u32)ULONG_MAX;
	FUNC0(&cmd->list, &fusion->cmd_pool);

	FUNC2(&fusion->cmd_pool_lock, flags);
}