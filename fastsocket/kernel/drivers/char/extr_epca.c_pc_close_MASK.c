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
struct tty_port {int dummy; } ;
struct file {int dummy; } ;
struct channel {scalar_t__ event; struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct channel*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*,struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_port*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,int /*<<< orphan*/ *) ; 
 struct channel* FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, struct file *filp)
{
	struct channel *ch;
	struct tty_port *port;
	/*
	 * verifyChannel returns the channel from the tty struct if it is
	 * valid. This serves as a sanity check.
	 */
	ch = FUNC5(tty);
	if (ch == NULL)
		return;
	port = &ch->port;

	if (FUNC3(port, tty, filp) == 0)
		return;

	FUNC0(tty);
	FUNC1(ch, tty);

	FUNC2(port, tty);
	ch->event = 0;	/* FIXME: review ch->event locking */
	FUNC4(port, NULL);
}