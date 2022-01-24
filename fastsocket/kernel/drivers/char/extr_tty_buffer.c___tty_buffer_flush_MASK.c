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
struct TYPE_2__ {struct tty_buffer* head; struct tty_buffer* tail; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {int /*<<< orphan*/  commit; int /*<<< orphan*/  read; struct tty_buffer* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct tty_buffer*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct tty_buffer *thead;

	if (tty->buf.head == NULL)
		return;
	while ((thead = tty->buf.head->next) != NULL) {
		FUNC1(tty, tty->buf.head);
		tty->buf.head = thead;
	}
	FUNC0(tty->buf.head != tty->buf.tail);
	tty->buf.head->read = tty->buf.head->commit;
}