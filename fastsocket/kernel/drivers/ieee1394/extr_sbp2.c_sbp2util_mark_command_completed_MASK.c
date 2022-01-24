#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sbp2_lu {int /*<<< orphan*/  cmd_orb_completed; TYPE_4__* ud; } ;
struct sbp2_command_info {int /*<<< orphan*/  list; TYPE_5__* Current_SCpnt; } ;
struct TYPE_11__ {int /*<<< orphan*/  sc_data_direction; } ;
struct TYPE_10__ {TYPE_3__* ne; } ;
struct TYPE_9__ {TYPE_2__* host; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_1__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC4(struct sbp2_lu *lu,
					    struct sbp2_command_info *cmd)
{
	if (FUNC2(cmd->Current_SCpnt))
		FUNC0(lu->ud->ne->host->device.parent,
			     FUNC3(cmd->Current_SCpnt),
			     FUNC2(cmd->Current_SCpnt),
			     cmd->Current_SCpnt->sc_data_direction);
	FUNC1(&cmd->list, &lu->cmd_orb_completed);
}