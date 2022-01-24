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
struct tty_struct {struct line* driver_data; } ;
struct line {scalar_t__ head; scalar_t__ tail; int /*<<< orphan*/  lock; TYPE_1__* driver; int /*<<< orphan*/  chan_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  write_irq; } ;

/* Variables and functions */
 int FUNC0 (struct line*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct tty_struct *tty, const unsigned char *buf, int len)
{
	struct line *line = tty->driver_data;
	unsigned long flags;
	int n, ret = 0;

	FUNC1(&line->lock, flags);
	if (line->head != line->tail)
		ret = FUNC0(line, buf, len);
	else {
		n = FUNC3(&line->chan_list, buf, len,
			       line->driver->write_irq);
		if (n < 0) {
			ret = n;
			goto out_up;
		}

		len -= n;
		ret += n;
		if (len > 0)
			ret += FUNC0(line, buf + n, len);
	}
out_up:
	FUNC2(&line->lock, flags);
	return ret;
}