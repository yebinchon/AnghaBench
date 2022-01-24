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
struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  N_TTY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct tty_struct *tty)
{
	struct tty_ldisc *ld = FUNC3(N_TTY);
	if (FUNC0(ld))
		FUNC1("n_tty: init_tty");
	FUNC2(tty, ld);
}