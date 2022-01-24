#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ microsoft_gen1; } ;
struct mceusb_dev {int rem; int /*<<< orphan*/  learning_enabled; TYPE_1__ flags; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  MCE_CMD_DEVICE_RESET 149 
#define  MCE_CMD_G_CARRIER 148 
#define  MCE_CMD_G_REVISION 147 
#define  MCE_CMD_G_RXSENSOR 146 
#define  MCE_CMD_G_TIMEOUT 145 
#define  MCE_CMD_G_TXMASK 144 
#define  MCE_CMD_PING 143 
#define  MCE_CMD_SIG_END 142 
#define  MCE_CMD_S_CARRIER 141 
#define  MCE_CMD_S_RXSENSOR 140 
#define  MCE_CMD_S_TIMEOUT 139 
#define  MCE_CMD_S_TXMASK 138 
#define  MCE_CMD_UNKNOWN 137 
#define  MCE_CMD_UNKNOWN2 136 
#define  MCE_CMD_UNKNOWN3 135 
#define  MCE_CMD_UNKNOWN5 134 
#define  MCE_CMD_UNKNOWN7 133 
#define  MCE_CMD_UNKNOWN9 132 
#define  MCE_COMMAND_HEADER 131 
 int MCE_COMMAND_IRDATA ; 
 int MCE_COMMAND_MASK ; 
#define  MCE_COMMAND_NULL 130 
#define  MCE_HW_CMD_HEADER 129 
 int MCE_IRDATA_TRAILER ; 
#define  MCE_RSP_CMD_INVALID 128 
 int USB_BUFLEN ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(struct mceusb_dev *ir, char *buf,
				 int offset, int len, bool out)
{
	char codes[USB_BUFLEN * 3 + 1];
	char inout[9];
	u8 cmd, subcmd, data1, data2;
	struct device *dev = ir->dev;
	int i, start, skip = 0;

	if (!debug)
		return;

	/* skip meaningless 0xb1 0x60 header bytes on orig receiver */
	if (ir->flags.microsoft_gen1 && !out && !offset)
		skip = 2;

	if (len <= skip)
		return;

	for (i = 0; i < len && i < USB_BUFLEN; i++)
		FUNC1(codes + i * 3, 4, "%02x ", buf[i + offset] & 0xff);

	FUNC0(dev, "%sx data: %s(length=%d)\n",
		 (out ? "t" : "r"), codes, len);

	if (out)
		FUNC2(inout, "Request\0");
	else
		FUNC2(inout, "Got\0");

	start  = offset + skip;
	cmd    = buf[start] & 0xff;
	subcmd = buf[start + 1] & 0xff;
	data1  = buf[start + 2] & 0xff;
	data2  = buf[start + 3] & 0xff;

	switch (cmd) {
	case MCE_COMMAND_NULL:
		if ((subcmd == MCE_HW_CMD_HEADER) &&
		    (data1 == MCE_CMD_DEVICE_RESET))
			FUNC0(dev, "Device reset requested\n");
		else
			FUNC0(dev, "Unknown command 0x%02x 0x%02x\n",
				 cmd, subcmd);
		break;
	case MCE_HW_CMD_HEADER:
		switch (subcmd) {
		case MCE_CMD_G_REVISION:
			if (len == 2)
				FUNC0(dev, "Get hw/sw rev?\n");
			else
				FUNC0(dev, "hw/sw rev 0x%02x 0x%02x "
					 "0x%02x 0x%02x\n", data1, data2,
					 buf[start + 4], buf[start + 5]);
			break;
		case MCE_CMD_DEVICE_RESET:
			FUNC0(dev, "Device reset requested\n");
			break;
		case MCE_RSP_CMD_INVALID:
			FUNC0(dev, "Previous command not supported\n");
			break;
		case MCE_CMD_UNKNOWN7:
		case MCE_CMD_UNKNOWN9:
		default:
			FUNC0(dev, "Unknown command 0x%02x 0x%02x\n",
				 cmd, subcmd);
			break;
		}
		break;
	case MCE_COMMAND_HEADER:
		switch (subcmd) {
		case MCE_CMD_SIG_END:
			FUNC0(dev, "End of signal\n");
			break;
		case MCE_CMD_PING:
			FUNC0(dev, "Ping\n");
			break;
		case MCE_CMD_UNKNOWN:
			FUNC0(dev, "Resp to 9f 05 of 0x%02x 0x%02x\n",
				 data1, data2);
			break;
		case MCE_CMD_S_CARRIER:
			FUNC0(dev, "%s carrier mode and freq of "
				 "0x%02x 0x%02x\n", inout, data1, data2);
			break;
		case MCE_CMD_G_CARRIER:
			FUNC0(dev, "Get carrier mode and freq\n");
			break;
		case MCE_CMD_S_TXMASK:
			FUNC0(dev, "%s transmit blaster mask of 0x%02x\n",
				 inout, data1);
			break;
		case MCE_CMD_S_TIMEOUT:
			/* value is in units of 50us, so x*50/100 or x/2 ms */
			FUNC0(dev, "%s receive timeout of %d ms\n",
				 inout, ((data1 << 8) | data2) / 2);
			break;
		case MCE_CMD_G_TIMEOUT:
			FUNC0(dev, "Get receive timeout\n");
			break;
		case MCE_CMD_G_TXMASK:
			FUNC0(dev, "Get transmit blaster mask\n");
			break;
		case MCE_CMD_S_RXSENSOR:
			FUNC0(dev, "%s %s-range receive sensor in use\n",
				 inout, data1 == 0x02 ? "short" : "long");
			break;
		case MCE_CMD_G_RXSENSOR:
		/* aka MCE_RSP_PULSE_COUNT */
			if (out)
				FUNC0(dev, "Get receive sensor\n");
			else if (ir->learning_enabled)
				FUNC0(dev, "RX pulse count: %d\n",
					 ((data1 << 8) | data2));
			break;
		case MCE_RSP_CMD_INVALID:
			FUNC0(dev, "Error! Hardware is likely wedged...\n");
			break;
		case MCE_CMD_UNKNOWN2:
		case MCE_CMD_UNKNOWN3:
		case MCE_CMD_UNKNOWN5:
		default:
			FUNC0(dev, "Unknown command 0x%02x 0x%02x\n",
				 cmd, subcmd);
			break;
		}
		break;
	default:
		break;
	}

	if (cmd == MCE_IRDATA_TRAILER)
		FUNC0(dev, "End of raw IR data\n");
	else if ((cmd != MCE_COMMAND_HEADER) &&
		 ((cmd & MCE_COMMAND_MASK) == MCE_COMMAND_IRDATA))
		FUNC0(dev, "Raw IR data, %d pulse/space samples\n", ir->rem);
}