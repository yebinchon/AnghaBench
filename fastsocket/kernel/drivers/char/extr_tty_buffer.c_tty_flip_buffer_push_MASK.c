#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {TYPE_3__ work; int /*<<< orphan*/  lock; TYPE_2__* tail; } ;
struct tty_struct {TYPE_1__ buf; scalar_t__ low_latency; } ;
struct TYPE_5__ {int /*<<< orphan*/  used; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct tty_struct *tty)
{
	unsigned long flags;
	FUNC2(&tty->buf.lock, flags);
	if (tty->buf.tail != NULL)
		tty->buf.tail->commit = tty->buf.tail->used;
	FUNC3(&tty->buf.lock, flags);

	if (tty->low_latency)
		FUNC0(&tty->buf.work.work);
	else
		FUNC1(&tty->buf.work, 1);
}