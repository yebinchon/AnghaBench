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
struct tty_struct {struct scc_port* driver_data; } ;
struct scc_port {char x_char; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scc_port*) ; 

__attribute__((used)) static void FUNC1(struct tty_struct *tty, char ch)
{
	struct scc_port *port = tty->driver_data;

	port->x_char = ch;
	if (ch)
		FUNC0(port);
}