#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; TYPE_3__* driver; } ;
struct tty_audit_buf {int major; int minor; int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; } ;
struct TYPE_8__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_7__ {int major; int minor_start; } ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_5__ {struct tty_audit_buf* tty_audit_buf; int /*<<< orphan*/  audit_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_audit_buf*) ; 

void FUNC8(struct tty_struct *tty)
{
	struct tty_audit_buf *buf;

	FUNC4(&current->sighand->siglock);
	if (FUNC1(!current->signal->audit_tty)) {
		FUNC5(&current->sighand->siglock);
		return;
	}
	buf = current->signal->tty_audit_buf;
	if (buf)
		FUNC0(&buf->count);
	FUNC5(&current->sighand->siglock);

	if (buf) {
		int major, minor;

		major = tty->driver->major;
		minor = tty->driver->minor_start + tty->index;
		FUNC2(&buf->mutex);
		if (buf->major == major && buf->minor == minor)
			FUNC6(buf);
		FUNC3(&buf->mutex);
		FUNC7(buf);
	}
}