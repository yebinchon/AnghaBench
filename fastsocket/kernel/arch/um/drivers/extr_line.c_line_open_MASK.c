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
struct TYPE_2__ {int /*<<< orphan*/  ws_col; int /*<<< orphan*/  ws_row; } ;
struct tty_struct {size_t index; int count; TYPE_1__ winsize; struct line* driver_data; } ;
struct line {int sigio; int /*<<< orphan*/  count_lock; int /*<<< orphan*/  chan_list; int /*<<< orphan*/  task; struct tty_struct* tty; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct line*) ; 
 int /*<<< orphan*/  line_timer_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct line *lines, struct tty_struct *tty)
{
	struct line *line = &lines[tty->index];
	int err = -ENODEV;

	FUNC4(&line->count_lock);
	if (!line->valid)
		goto out_unlock;

	err = 0;
	if (tty->count > 1)
		goto out_unlock;

	FUNC5(&line->count_lock);

	tty->driver_data = line;
	line->tty = tty;

	err = FUNC3(line);
	if (err)
		return err;

	FUNC0(&line->task, line_timer_cb);

	if (!line->sigio) {
		FUNC1(&line->chan_list, tty);
		line->sigio = 1;
	}

	FUNC2(&line->chan_list, &tty->winsize.ws_row,
			 &tty->winsize.ws_col);

	return err;

out_unlock:
	FUNC5(&line->count_lock);
	return err;
}