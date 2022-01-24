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
struct mtip_port {TYPE_1__* commands; int /*<<< orphan*/  cmd_issue_lock; int /*<<< orphan*/ * cmd_issue; int /*<<< orphan*/ * s_active; } ;
struct TYPE_2__ {scalar_t__ comp_time; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_NCQ_COMMAND_TIMEOUT_MS ; 
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct mtip_port *port, int tag)
{
	FUNC2(&port->commands[tag].active, 1);

	FUNC4(&port->cmd_issue_lock);

	FUNC6((1 << FUNC0(tag)),
			port->s_active[FUNC1(tag)]);
	FUNC6((1 << FUNC0(tag)),
			port->cmd_issue[FUNC1(tag)]);

	FUNC5(&port->cmd_issue_lock);

	/* Set the command's timeout value.*/
	port->commands[tag].comp_time = jiffies + FUNC3(
					MTIP_NCQ_COMMAND_TIMEOUT_MS);
}