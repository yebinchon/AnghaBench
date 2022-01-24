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
struct tty_struct {struct line* driver_data; } ;
struct line {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int LINE_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct line*) ; 

int FUNC3(struct tty_struct *tty)
{
	struct line *line = tty->driver_data;
	unsigned long flags;
	int ret;

	FUNC0(&line->lock, flags);
	/* write_room subtracts 1 for the needed NULL, so we readd it.*/
	ret = LINE_BUFSIZE - (FUNC2(line) + 1);
	FUNC1(&line->lock, flags);

	return ret;
}