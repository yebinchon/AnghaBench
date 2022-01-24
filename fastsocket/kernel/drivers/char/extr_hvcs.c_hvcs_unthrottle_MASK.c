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
struct tty_struct {struct hvcs_struct* driver_data; } ;
struct hvcs_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  todo_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVCS_SCHED_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct hvcs_struct *hvcsd = tty->driver_data;
	unsigned long flags;

	FUNC1(&hvcsd->lock, flags);
	hvcsd->todo_mask |= HVCS_SCHED_READ;
	FUNC2(&hvcsd->lock, flags);
	FUNC0();
}