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
struct tty_struct {int /*<<< orphan*/  name; struct cyclades_port* driver_data; } ;
struct cyclades_port {scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cyclades_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct cyclades_port *info = tty->driver_data;
	unsigned long flags;

#ifdef SERIAL_DEBUG_IO
	printk("cy_flush_buffer %s\n", tty->name);	/* */
#endif

	if (FUNC3(info, tty->name, "cy_flush_buffer"))
		return;
	FUNC1(flags);
	info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
	FUNC0(flags);
	FUNC4(tty);
}