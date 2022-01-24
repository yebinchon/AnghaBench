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
struct tty_struct {int /*<<< orphan*/  name; struct cyclades_port* driver_data; } ;
struct cyclades_port {int line; } ;

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
	volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
	int channel;
	unsigned long flags;

#ifdef SERIAL_DEBUG_OTHER
	printk("cy_start %s\n", tty->name);	/* */
#endif

	if (FUNC3(info, tty->name, "cy_start"))
		return;

	channel = info->line;

	FUNC1(flags);
	base_addr[CyCAR] = (u_char) (channel);
	base_addr[CyIER] |= CyTxMpty;
	FUNC0(flags);
}