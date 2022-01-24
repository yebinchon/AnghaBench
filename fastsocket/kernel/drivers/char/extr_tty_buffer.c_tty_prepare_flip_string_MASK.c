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
struct TYPE_2__ {int /*<<< orphan*/  lock; struct tty_buffer* tail; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {unsigned char* char_buf_ptr; int used; int flag_buf_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_NORMAL ; 
 int FUNC0 (struct tty_struct*,size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct tty_struct *tty, unsigned char **chars,
								size_t size)
{
	int space;
	unsigned long flags;
	struct tty_buffer *tb;

	FUNC3(&tty->buf.lock, flags);
	space = FUNC0(tty, size);

	tb = tty->buf.tail;
	if (FUNC1(space)) {
		*chars = tb->char_buf_ptr + tb->used;
		FUNC2(tb->flag_buf_ptr + tb->used, TTY_NORMAL, space);
		tb->used += space;
	}
	FUNC4(&tty->buf.lock, flags);
	return space;
}