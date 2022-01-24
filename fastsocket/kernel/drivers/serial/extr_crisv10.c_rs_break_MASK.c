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
struct tty_struct {scalar_t__ driver_data; } ;
struct e100_serial {int* ioport; int tx_ctrl; } ;

/* Variables and functions */
 int EIO ; 
 size_t REG_TR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static int
FUNC2(struct tty_struct *tty, int break_state)
{
	struct e100_serial *info = (struct e100_serial *)tty->driver_data;
	unsigned long flags;

	if (!info->ioport)
		return -EIO;

	FUNC1(flags);
	if (break_state == -1) {
		/* Go to manual mode and set the txd pin to 0 */
		/* Clear bit 7 (txd) and 6 (tr_enable) */
		info->tx_ctrl &= 0x3F;
	} else {
		/* Set bit 7 (txd) and 6 (tr_enable) */
		info->tx_ctrl |= (0x80 | 0x40);
	}
	info->ioport[REG_TR_CTRL] = info->tx_ctrl;
	FUNC0(flags);
	return 0;
}