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
struct tty_struct {int /*<<< orphan*/ * driver_data; } ;
struct tty3270 {int /*<<< orphan*/  view; TYPE_1__* kbd; struct tty_struct* tty; } ;
struct raw3270_view {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void
FUNC2(struct raw3270_view *view)
{
	struct tty3270 *tp;
	struct tty_struct *tty;

	tp = (struct tty3270 *) view;
	tty = tp->tty;
	if (tty) {
		tty->driver_data = NULL;
		tp->tty = tp->kbd->tty = NULL;
		FUNC1(tty);
		FUNC0(&tp->view);
	}
}