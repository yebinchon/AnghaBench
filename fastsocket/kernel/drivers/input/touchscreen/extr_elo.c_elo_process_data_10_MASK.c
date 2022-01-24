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
struct input_dev {int dummy; } ;
struct elo {unsigned char* data; size_t idx; int csum; unsigned char expected_packet; int /*<<< orphan*/  response; int /*<<< orphan*/  cmd_done; struct input_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ELO10_ACK_PACKET ; 
 unsigned char ELO10_LEAD_BYTE ; 
 int /*<<< orphan*/  ELO10_PACKET_LEN ; 
 int ELO10_PRESSURE ; 
 int ELO10_TOUCH ; 
 unsigned char ELO10_TOUCH_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char,...) ; 

__attribute__((used)) static void FUNC7(struct elo *elo, unsigned char data)
{
	struct input_dev *dev = elo->dev;

	elo->data[elo->idx] = data;
	switch (elo->idx++) {
		case 0:
			elo->csum = 0xaa;
			if (data != ELO10_LEAD_BYTE) {
				FUNC6("elo: unsynchronized data: 0x%02x\n", data);
				elo->idx = 0;
			}
			break;

		case 9:
			elo->idx = 0;
			if (data != elo->csum) {
				FUNC6("elo: bad checksum: 0x%02x, expected 0x%02x\n",
					 data, elo->csum);
				break;
			}
			if (elo->data[1] != elo->expected_packet) {
				if (elo->data[1] != ELO10_TOUCH_PACKET)
					FUNC6("elo: unexpected packet: 0x%02x\n",
						 elo->data[1]);
				break;
			}
			if (FUNC4(elo->data[1] == ELO10_TOUCH_PACKET)) {
				FUNC1(dev, ABS_X, (elo->data[4] << 8) | elo->data[3]);
				FUNC1(dev, ABS_Y, (elo->data[6] << 8) | elo->data[5]);
				if (elo->data[2] & ELO10_PRESSURE)
					FUNC1(dev, ABS_PRESSURE,
							(elo->data[8] << 8) | elo->data[7]);
				FUNC2(dev, BTN_TOUCH, elo->data[2] & ELO10_TOUCH);
				FUNC3(dev);
			} else if (elo->data[1] == ELO10_ACK_PACKET) {
				if (elo->data[2] == '0')
					elo->expected_packet = ELO10_TOUCH_PACKET;
				FUNC0(&elo->cmd_done);
			} else {
				FUNC5(elo->response, &elo->data[1], ELO10_PACKET_LEN);
				elo->expected_packet = ELO10_ACK_PACKET;
			}
			break;
	}
	elo->csum += data;
}