#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {scalar_t__ char_count; int /*<<< orphan*/  char_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty3270*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct tty_struct *tty)
{
	struct tty3270 *tp;

	tp = tty->driver_data;
	if (!tp)
		return;
	if (tp->char_count > 0) {
		FUNC0(tp, tp->char_buf, tp->char_count);
		tp->char_count = 0;
	}
}