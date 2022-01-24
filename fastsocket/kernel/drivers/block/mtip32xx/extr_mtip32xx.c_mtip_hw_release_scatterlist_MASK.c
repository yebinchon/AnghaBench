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
struct semaphore {int dummy; } ;
struct driver_data {TYPE_1__* port; } ;
struct TYPE_2__ {struct semaphore cmd_slot; struct semaphore cmd_slot_unal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct semaphore*) ; 

__attribute__((used)) static void FUNC2(struct driver_data *dd, int tag,
								int unaligned)
{
	struct semaphore *sem = unaligned ? &dd->port->cmd_slot_unal :
							&dd->port->cmd_slot;
	FUNC0(dd->port, tag);
	FUNC1(sem);
}