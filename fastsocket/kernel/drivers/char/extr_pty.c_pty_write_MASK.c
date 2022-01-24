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
struct tty_struct {scalar_t__ stopped; struct tty_struct* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int FUNC1 (struct tty_struct*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, const unsigned char *buf, int c)
{
	struct tty_struct *to = tty->link;

	if (tty->stopped)
		return 0;

	if (c > 0) {
		/* Stuff the data into the input queue of the other end */
		c = FUNC1(to, buf, c);
		/* And shovel */
		if (c) {
			FUNC0(to);
			FUNC2(tty);
		}
	}
	return c;
}