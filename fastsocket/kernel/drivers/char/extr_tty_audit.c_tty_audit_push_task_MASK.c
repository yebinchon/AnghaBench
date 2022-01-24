#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct tty_audit_buf {int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; } ;
struct task_struct {TYPE_1__* sighand; TYPE_2__* signal; } ;
struct TYPE_4__ {struct tty_audit_buf* tty_audit_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_audit_buf*) ; 

void FUNC7(struct task_struct *tsk, uid_t loginuid, u32 sessionid)
{
	struct tty_audit_buf *buf;

	FUNC3(&tsk->sighand->siglock);
	buf = tsk->signal->tty_audit_buf;
	if (buf)
		FUNC0(&buf->count);
	FUNC4(&tsk->sighand->siglock);
	if (!buf)
		return;

	FUNC1(&buf->mutex);
	FUNC5(tsk, loginuid, sessionid, buf);
	FUNC2(&buf->mutex);

	FUNC6(buf);
}