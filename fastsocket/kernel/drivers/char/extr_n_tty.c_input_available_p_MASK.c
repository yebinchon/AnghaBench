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
struct tty_struct {int read_cnt; scalar_t__ canon_data; scalar_t__ icanon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 

__attribute__((used)) static inline int FUNC1(struct tty_struct *tty, int amt)
{
	FUNC0(tty);
	if (tty->icanon) {
		if (tty->canon_data)
			return 1;
	} else if (tty->read_cnt >= (amt ? amt : 1))
		return 1;

	return 0;
}