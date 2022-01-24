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
struct tty3270_line {scalar_t__ len; } ;
struct TYPE_2__ {int rows; } ;
struct tty3270 {int cy; TYPE_1__ view; struct tty3270_line* screen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty3270*) ; 

__attribute__((used)) static void
FUNC3(struct tty3270 *tp)
{
	struct tty3270_line temp;
	int i;

	FUNC1(tp, tp->cy);
	if (tp->cy < tp->view.rows - 3) {
		tp->cy++;
		return;
	}
	/* Last line just filled up. Add new, blank line. */
	FUNC0(tp);
	temp = tp->screen[0];
	temp.len = 0;
	for (i = 0; i < tp->view.rows - 3; i++)
		tp->screen[i] = tp->screen[i+1];
	tp->screen[tp->view.rows - 3] = temp;
	FUNC2(tp);
}