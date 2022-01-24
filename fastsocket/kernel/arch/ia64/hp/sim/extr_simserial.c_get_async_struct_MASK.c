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
struct serial_state {struct async_struct* info; int /*<<< orphan*/  xmit_fifo_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  port; int /*<<< orphan*/  count; } ;
struct async_struct {int line; struct serial_state* state; int /*<<< orphan*/  work; int /*<<< orphan*/  xmit_fifo_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  port; int /*<<< orphan*/  magic; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  open_wait; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIAL_MAGIC ; 
 int /*<<< orphan*/  do_softint ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct async_struct*) ; 
 struct async_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct serial_state* rs_table ; 

__attribute__((used)) static int FUNC4(int line, struct async_struct **ret_info)
{
	struct async_struct *info;
	struct serial_state *sstate;

	sstate = rs_table + line;
	sstate->count++;
	if (sstate->info) {
		*ret_info = sstate->info;
		return 0;
	}
	info = FUNC3(sizeof(struct async_struct), GFP_KERNEL);
	if (!info) {
		sstate->count--;
		return -ENOMEM;
	}
	FUNC1(&info->open_wait);
	FUNC1(&info->close_wait);
	FUNC1(&info->delta_msr_wait);
	info->magic = SERIAL_MAGIC;
	info->port = sstate->port;
	info->flags = sstate->flags;
	info->xmit_fifo_size = sstate->xmit_fifo_size;
	info->line = line;
	FUNC0(&info->work, do_softint);
	info->state = sstate;
	if (sstate->info) {
		FUNC2(info);
		*ret_info = sstate->info;
		return 0;
	}
	*ret_info = sstate->info = info;
	return 0;
}