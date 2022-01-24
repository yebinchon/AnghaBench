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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_port*,struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_port*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*,int /*<<< orphan*/ *) ; 

void FUNC4(struct tty_port *port, struct tty_struct *tty,
							struct file *filp)
{
	if (FUNC1(port, tty, filp) == 0)
		return;
	FUNC2(port);
	FUNC0(port, tty);
	FUNC3(port, NULL);
}