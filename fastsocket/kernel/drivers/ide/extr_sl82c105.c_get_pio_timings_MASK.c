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
typedef  unsigned int u8 ;
struct ide_timing {int active; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 unsigned int XFER_PIO_0 ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct ide_timing* FUNC2 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(ide_drive_t *drive, u8 pio)
{
	struct ide_timing *t = FUNC2(XFER_PIO_0 + pio);
	unsigned int cmd_on, cmd_off;
	u8 iordy = 0;

	cmd_on  = (t->active + 29) / 30;
	cmd_off = (FUNC0(drive, pio) - 30 * cmd_on + 29) / 30;

	if (cmd_on == 0)
		cmd_on = 1;

	if (cmd_off == 0)
		cmd_off = 1;

	if (FUNC1(drive, pio))
		iordy = 0x40;

	return (cmd_on - 1) << 8 | (cmd_off - 1) | iordy;
}