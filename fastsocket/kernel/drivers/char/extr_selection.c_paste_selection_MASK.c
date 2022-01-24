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
struct vc_data {int /*<<< orphan*/  paste_wait; } ;
struct tty_struct {TYPE_2__* ldisc; int /*<<< orphan*/  receive_room; int /*<<< orphan*/  flags; struct vc_data* driver_data; } ;
struct tty_ldisc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* receive_buf ) (struct tty_struct*,scalar_t__,int /*<<< orphan*/ *,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TTY_THROTTLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ sel_buffer ; 
 int sel_buffer_lth ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*,scalar_t__,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC13 (struct tty_struct*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC14(struct tty_struct *tty)
{
	struct vc_data *vc = tty->driver_data;
	int	pasted = 0;
	unsigned int count;
	struct  tty_ldisc *ld;
	FUNC0(wait, current);

	FUNC2();
	FUNC5();
	FUNC6();

	ld = FUNC13(tty);
	
	FUNC3(&vc->paste_wait, &wait);
	while (sel_buffer && sel_buffer_lth > pasted) {
		FUNC9(TASK_INTERRUPTIBLE);
		if (FUNC11(TTY_THROTTLED, &tty->flags)) {
			FUNC8();
			continue;
		}
		count = sel_buffer_lth - pasted;
		count = FUNC4(count, tty->receive_room);
		tty->ldisc->ops->receive_buf(tty, sel_buffer + pasted,
								NULL, count);
		pasted += count;
	}
	FUNC7(&vc->paste_wait, &wait);
	FUNC1(TASK_RUNNING);

	FUNC12(ld);
	return 0;
}