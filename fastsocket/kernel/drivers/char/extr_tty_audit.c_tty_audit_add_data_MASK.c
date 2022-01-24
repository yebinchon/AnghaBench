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
struct tty_struct {scalar_t__ icanon; int index; TYPE_3__* driver; } ;
struct tty_audit_buf {int major; int minor; scalar_t__ icanon; scalar_t__ valid; scalar_t__ data; int /*<<< orphan*/  mutex; } ;
struct TYPE_8__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ subtype; int major; int minor_start; } ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_5__ {int audit_tty_log_passwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ N_TTY_BUF_SIZE ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tty_audit_buf* FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_audit_buf*) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct tty_struct *tty, unsigned char *data,
			size_t size)
{
	struct tty_audit_buf *buf;
	int major, minor;
	int audit_log_tty_passwd;
	unsigned long flags;

	if (FUNC9(size == 0))
		return;

	FUNC4(&current->sighand->siglock, flags);
	audit_log_tty_passwd = current->signal->audit_tty_log_passwd;
	FUNC5(&current->sighand->siglock, flags);
	if (!audit_log_tty_passwd && tty->icanon && !FUNC0(tty))
		return;

	if (tty->driver->type == TTY_DRIVER_TYPE_PTY
	    && tty->driver->subtype == PTY_TYPE_MASTER)
		return;

	buf = FUNC6(tty);
	if (!buf)
		return;

	FUNC2(&buf->mutex);
	major = tty->driver->major;
	minor = tty->driver->minor_start + tty->index;
	if (buf->major != major || buf->minor != minor
	    || buf->icanon != tty->icanon) {
		FUNC7(buf);
		buf->major = major;
		buf->minor = minor;
		buf->icanon = tty->icanon;
	}
	do {
		size_t run;

		run = N_TTY_BUF_SIZE - buf->valid;
		if (run > size)
			run = size;
		FUNC1(buf->data + buf->valid, data, run);
		buf->valid += run;
		data += run;
		size -= run;
		if (buf->valid == N_TTY_BUF_SIZE)
			FUNC7(buf);
	} while (size != 0);
	FUNC3(&buf->mutex);
	FUNC8(buf);
}