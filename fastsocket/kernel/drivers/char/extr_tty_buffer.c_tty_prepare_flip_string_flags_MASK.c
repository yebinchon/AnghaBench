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
struct tty_buffer {unsigned char* char_buf_ptr; int used; char* flag_buf_ptr; } ;

/* Variables and functions */
 int FUNC0 (struct tty_struct*,size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct tty_struct *tty,
			unsigned char **chars, char **flags, size_t size)
{
	int space;
	unsigned long __flags;
	struct tty_buffer *tb;

	FUNC2(&tty->buf.lock, __flags);
	space = FUNC0(tty, size);

	tb = tty->buf.tail;
	if (FUNC1(space)) {
		*chars = tb->char_buf_ptr + tb->used;
		*flags = tb->flag_buf_ptr + tb->used;
		tb->used += space;
	}
	FUNC3(&tty->buf.lock, __flags);
	return space;
}