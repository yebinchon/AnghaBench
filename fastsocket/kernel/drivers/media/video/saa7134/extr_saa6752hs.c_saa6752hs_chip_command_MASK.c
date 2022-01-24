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
struct i2c_client {int dummy; } ;
typedef  enum saa6752hs_command { ____Placeholder_saa6752hs_command } saa6752hs_command ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int HZ ; 
#define  SAA6752HS_COMMAND_PAUSE 134 
#define  SAA6752HS_COMMAND_RECONFIGURE 133 
#define  SAA6752HS_COMMAND_RECONFIGURE_FORCE 132 
#define  SAA6752HS_COMMAND_RESET 131 
#define  SAA6752HS_COMMAND_SLEEP 130 
#define  SAA6752HS_COMMAND_START 129 
#define  SAA6752HS_COMMAND_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,unsigned char*,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
				  enum saa6752hs_command command)
{
	unsigned char buf[3];
	unsigned long timeout;
	int status = 0;

	/* execute the command */
	switch(command) {
	case SAA6752HS_COMMAND_RESET:
		buf[0] = 0x00;
		break;

	case SAA6752HS_COMMAND_STOP:
		buf[0] = 0x03;
		break;

	case SAA6752HS_COMMAND_START:
		buf[0] = 0x02;
		break;

	case SAA6752HS_COMMAND_PAUSE:
		buf[0] = 0x04;
		break;

	case SAA6752HS_COMMAND_RECONFIGURE:
		buf[0] = 0x05;
		break;

	case SAA6752HS_COMMAND_SLEEP:
		buf[0] = 0x06;
		break;

	case SAA6752HS_COMMAND_RECONFIGURE_FORCE:
		buf[0] = 0x07;
		break;

	default:
		return -EINVAL;
	}

	/* set it and wait for it to be so */
	FUNC1(client, buf, 1);
	timeout = jiffies + HZ * 3;
	for (;;) {
		/* get the current status */
		buf[0] = 0x10;
		FUNC1(client, buf, 1);
		FUNC0(client, buf, 1);

		if (!(buf[0] & 0x20))
			break;
		if (FUNC3(jiffies,timeout)) {
			status = -ETIMEDOUT;
			break;
		}

		FUNC2(10);
	}

	/* delay a bit to let encoder settle */
	FUNC2(50);

	return status;
}