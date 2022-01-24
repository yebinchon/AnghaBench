#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_audit_buf {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_4__ {struct tty_audit_buf* tty_audit_buf; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_audit_buf*) ; 

void FUNC6(void)
{
	struct tty_audit_buf *buf;

	FUNC2(&current->sighand->siglock);
	buf = current->signal->tty_audit_buf;
	current->signal->tty_audit_buf = NULL;
	FUNC3(&current->sighand->siglock);
	if (!buf)
		return;

	FUNC0(&buf->mutex);
	FUNC4(buf);
	FUNC1(&buf->mutex);

	FUNC5(buf);
}