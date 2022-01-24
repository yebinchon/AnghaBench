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
typedef  unsigned char u_char ;
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; int /*<<< orphan*/  name; struct cyclades_port* driver_data; } ;
struct cyclades_port {scalar_t__ xmit_cnt; int line; int /*<<< orphan*/  xmit_buf; } ;

/* Variables and functions */
 scalar_t__ BASE_ADDR ; 
 size_t CyCAR ; 
 size_t CyIER ; 
 unsigned char volatile CyTxMpty ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cyclades_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct cyclades_port *info = tty->driver_data;
	unsigned long flags;
	volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
	int channel;

#ifdef SERIAL_DEBUG_IO
	printk("cy_flush_chars %s\n", tty->name);	/* */
#endif

	if (FUNC3(info, tty->name, "cy_flush_chars"))
		return;

	if (info->xmit_cnt <= 0 || tty->stopped
	    || tty->hw_stopped || !info->xmit_buf)
		return;

	channel = info->line;

	FUNC1(flags);
	base_addr[CyCAR] = channel;
	base_addr[CyIER] |= CyTxMpty;
	FUNC0(flags);
}