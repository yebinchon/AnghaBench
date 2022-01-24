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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct i2o_message {int dummy; } ;

/* Variables and functions */
 int I2O_CMD_UTIL_EVT_REGISTER ; 
 int MSG_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void FUNC6(const char *severity, const char *str,
		       struct i2o_message *m)
{
	u32 *msg = (u32 *) m;
	u8 cmd = (msg[1] >> 24) & 0xFF;
	u8 req_status = (msg[4] >> 24) & 0xFF;
	u16 detailed_status = msg[4] & 0xFFFF;

	if (cmd == I2O_CMD_UTIL_EVT_REGISTER)
		return;		// No status in this reply

	FUNC5("%s%s: ", severity, str);

	if (cmd < 0x1F)		// Utility cmd
		FUNC4(cmd);

	else if (cmd >= 0xA0 && cmd <= 0xEF)	// Executive cmd
		FUNC2(cmd);
	else
		FUNC5("Cmd = %0#2x, ", cmd);	// Other cmds

	if (msg[0] & MSG_FAIL) {
		FUNC3(req_status, msg);
		return;
	}

	FUNC1(req_status);

	if (cmd < 0x1F || (cmd >= 0xA0 && cmd <= 0xEF))
		FUNC0(detailed_status);
	else
		FUNC5(" / DetailedStatus = %0#4x.\n",
		       detailed_status);
}