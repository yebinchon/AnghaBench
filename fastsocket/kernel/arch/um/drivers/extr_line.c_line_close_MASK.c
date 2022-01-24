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
struct tty_struct {int count; struct line* driver_data; } ;
struct line {int /*<<< orphan*/  count_lock; scalar_t__ sigio; int /*<<< orphan*/ * tty; int /*<<< orphan*/  valid; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct line*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

void FUNC4(struct tty_struct *tty, struct file * filp)
{
	struct line *line = tty->driver_data;

	/*
	 * If line_open fails (and tty->driver_data is never set),
	 * tty_open will call line_close.  So just return in this case.
	 */
	if (line == NULL)
		return;

	/* We ignore the error anyway! */
	FUNC0(line);

	FUNC1(&line->count_lock);
	if (!line->valid)
		goto out_unlock;

	if (tty->count > 1)
		goto out_unlock;

	FUNC2(&line->count_lock);

	line->tty = NULL;
	tty->driver_data = NULL;

	if (line->sigio) {
		FUNC3(tty);
		line->sigio = 0;
	}

	return;

out_unlock:
	FUNC2(&line->count_lock);
}