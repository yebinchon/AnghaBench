#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct semaphore {int dummy; } ;
struct scatterlist {int dummy; } ;
struct driver_data {TYPE_2__* port; int /*<<< orphan*/  dd_flag; } ;
struct TYPE_4__ {TYPE_1__* commands; struct semaphore cmd_slot; struct semaphore cmd_slot_unal; } ;
struct TYPE_3__ {struct scatterlist* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct semaphore*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct semaphore*) ; 

__attribute__((used)) static struct scatterlist *FUNC5(struct driver_data *dd,
						   int *tag, int unaligned)
{
	struct semaphore *sem = unaligned ? &dd->port->cmd_slot_unal :
							&dd->port->cmd_slot;

	/*
	 * It is possible that, even with this semaphore, a thread
	 * may think that no command slots are available. Therefore, we
	 * need to make an attempt to get_slot().
	 */
	FUNC0(sem);
	*tag = FUNC1(dd->port);

	if (FUNC3(FUNC2(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))) {
		FUNC4(sem);
		return NULL;
	}
	if (FUNC3(*tag < 0)) {
		FUNC4(sem);
		return NULL;
	}

	return dd->port->commands[*tag].sg;
}