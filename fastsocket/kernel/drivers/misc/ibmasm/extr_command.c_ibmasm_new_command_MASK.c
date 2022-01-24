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
struct service_processor {int /*<<< orphan*/  lock; } ;
struct command {size_t buffer_size; int /*<<< orphan*/  queue_node; int /*<<< orphan*/  wait; int /*<<< orphan*/  status; int /*<<< orphan*/ * lock; int /*<<< orphan*/  kref; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IBMASM_CMD_MAX_BUFFER_SIZE ; 
 int /*<<< orphan*/  IBMASM_CMD_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  command_count ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct command*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t,int /*<<< orphan*/ ) ; 

struct command *FUNC8(struct service_processor *sp, size_t buffer_size)
{
	struct command *cmd;

	if (buffer_size > IBMASM_CMD_MAX_BUFFER_SIZE)
		return NULL;

	cmd = FUNC7(sizeof(struct command), GFP_KERNEL);
	if (cmd == NULL)
		return NULL;


	cmd->buffer = FUNC7(buffer_size, GFP_KERNEL);
	if (cmd->buffer == NULL) {
		FUNC5(cmd);
		return NULL;
	}
	cmd->buffer_size = buffer_size;

	FUNC6(&cmd->kref);
	cmd->lock = &sp->lock;

	cmd->status = IBMASM_CMD_PENDING;
	FUNC4(&cmd->wait);
	FUNC0(&cmd->queue_node);

	FUNC1(&command_count);
	FUNC3("command count: %d\n", FUNC2(&command_count));

	return cmd;
}