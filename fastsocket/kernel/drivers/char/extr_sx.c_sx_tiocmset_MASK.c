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
struct tty_struct {struct sx_port* driver_data; } ;
struct sx_port {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct sx_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sx_port*,int,int) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, struct file *file,
		unsigned int set, unsigned int clear)
{
	struct sx_port *port = tty->driver_data;
	int rts = -1, dtr = -1;

	if (set & TIOCM_RTS)
		rts = 1;
	if (set & TIOCM_DTR)
		dtr = 1;
	if (clear & TIOCM_RTS)
		rts = 0;
	if (clear & TIOCM_DTR)
		dtr = 0;

	FUNC1(port, dtr, rts);
	FUNC0(port);
	return 0;
}