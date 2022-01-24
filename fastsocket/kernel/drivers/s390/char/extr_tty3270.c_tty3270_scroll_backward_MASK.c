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
struct TYPE_4__ {int rows; int /*<<< orphan*/  lock; } ;
struct tty3270 {int nr_up; int nr_lines; TYPE_2__ view; } ;
struct kbd_data {TYPE_1__* tty; } ;
struct TYPE_3__ {struct tty3270* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty3270*) ; 

__attribute__((used)) static void
FUNC5(struct kbd_data *kbd)
{
	struct tty3270 *tp;
	int nr_up;

	tp = kbd->tty->driver_data;
	FUNC0(&tp->view.lock);
	nr_up = tp->nr_up + tp->view.rows - 2;
	if (nr_up + tp->view.rows - 2 > tp->nr_lines)
		nr_up = tp->nr_lines - tp->view.rows + 2;
	if (nr_up != tp->nr_up) {
		tp->nr_up = nr_up;
		FUNC2(tp);
		FUNC4(tp);
		FUNC3(tp, 1);
	}
	FUNC1(&tp->view.lock);
}