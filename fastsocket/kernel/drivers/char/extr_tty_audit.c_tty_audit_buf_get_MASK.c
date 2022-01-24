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
struct tty_struct {int /*<<< orphan*/  icanon; scalar_t__ index; TYPE_1__* driver; } ;
struct tty_audit_buf {int /*<<< orphan*/  count; } ;
struct TYPE_8__ {TYPE_3__* sighand; TYPE_2__* signal; } ;
struct TYPE_7__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_6__ {struct tty_audit_buf* tty_audit_buf; int /*<<< orphan*/  audit_tty; } ;
struct TYPE_5__ {scalar_t__ minor_start; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* current ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tty_audit_buf* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_audit_buf*) ; 

__attribute__((used)) static struct tty_audit_buf *FUNC7(struct tty_struct *tty)
{
	struct tty_audit_buf *buf, *buf2;

	buf = NULL;
	buf2 = NULL;
	FUNC3(&current->sighand->siglock);
	if (FUNC2(!current->signal->audit_tty))
		goto out;
	buf = current->signal->tty_audit_buf;
	if (buf) {
		FUNC0(&buf->count);
		goto out;
	}
	FUNC4(&current->sighand->siglock);

	buf2 = FUNC5(tty->driver->major,
				   tty->driver->minor_start + tty->index,
				   tty->icanon);
	if (buf2 == NULL) {
		FUNC1("out of memory in TTY auditing");
		return NULL;
	}

	FUNC3(&current->sighand->siglock);
	if (!current->signal->audit_tty)
		goto out;
	buf = current->signal->tty_audit_buf;
	if (!buf) {
		current->signal->tty_audit_buf = buf2;
		buf = buf2;
		buf2 = NULL;
	}
	FUNC0(&buf->count);
	/* Fall through */
 out:
	FUNC4(&current->sighand->siglock);
	if (buf2)
		FUNC6(buf2);
	return buf;
}