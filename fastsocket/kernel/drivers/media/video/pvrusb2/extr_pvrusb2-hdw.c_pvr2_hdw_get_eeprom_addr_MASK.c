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
struct pvr2_hdw {int* cmd_buffer; int /*<<< orphan*/  ctl_lock; } ;

/* Variables and functions */
 int FX2CMD_GET_EEPROM_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pvr2_hdw*,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC3(struct pvr2_hdw *hdw)
{
	int result;
	FUNC1(hdw->ctl_lock); do {
		hdw->cmd_buffer[0] = FX2CMD_GET_EEPROM_ADDR;
		result = FUNC2(hdw,
					   hdw->cmd_buffer,1,
					   hdw->cmd_buffer,1);
		if (result < 0) break;
		result = hdw->cmd_buffer[0];
	} while(0); FUNC0(hdw->ctl_lock);
	return result;
}