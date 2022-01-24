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
struct e100_serial {int /*<<< orphan*/  line; int /*<<< orphan*/  rx_ctrl; int /*<<< orphan*/ * ioport; } ;

/* Variables and functions */
 int /*<<< orphan*/  E100_RTS_MASK ; 
 size_t REG_REC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC3(struct e100_serial *info, int set)
{
#ifndef CONFIG_SVINTO_SIM
	unsigned long flags;
	FUNC1(flags);
	info->rx_ctrl &= ~E100_RTS_MASK;
	info->rx_ctrl |= (set ? 0 : E100_RTS_MASK);  /* RTS is active low */
	info->ioport[REG_REC_CTRL] = info->rx_ctrl;
	FUNC0(flags);
#ifdef SERIAL_DEBUG_IO
	printk("ser%i rts %i\n", info->line, set);
#endif
#endif
}