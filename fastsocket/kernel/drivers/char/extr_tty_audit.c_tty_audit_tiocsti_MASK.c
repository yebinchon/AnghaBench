#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct tty_struct {int index; TYPE_3__* driver; } ;
struct tty_audit_buf {int major; int minor; int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_10__ {int major; int minor_start; } ;
struct TYPE_9__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_8__ {int audit_tty; struct tty_audit_buf* tty_audit_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ audit_enabled ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 unsigned int FUNC2 (TYPE_4__*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_4__*,int /*<<< orphan*/ ,unsigned int,int,int,char*,int) ; 

void FUNC10(struct tty_struct *tty, char ch)
{
	struct tty_audit_buf *buf;
	int major, minor, should_audit;

	FUNC5(&current->sighand->siglock);
	should_audit = current->signal->audit_tty;
	buf = current->signal->tty_audit_buf;
	if (buf)
		FUNC0(&buf->count);
	FUNC6(&current->sighand->siglock);

	major = tty->driver->major;
	minor = tty->driver->minor_start + tty->index;
	if (buf) {
		FUNC3(&buf->mutex);
		if (buf->major == major && buf->minor == minor)
			FUNC7(buf);
		FUNC4(&buf->mutex);
		FUNC8(buf);
	}

	if (should_audit && audit_enabled) {
		uid_t auid;
		unsigned int sessionid;

		auid = FUNC1(current);
		sessionid = FUNC2(current);
		FUNC9("ioctl=TIOCSTI", current, auid, sessionid, major,
			      minor, &ch, 1);
	}
}