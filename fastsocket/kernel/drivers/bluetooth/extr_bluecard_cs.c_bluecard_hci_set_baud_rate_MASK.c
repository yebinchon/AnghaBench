#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct hci_dev {scalar_t__ driver_data; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int /*<<< orphan*/  txq; } ;
typedef  TYPE_1__ bluecard_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HCI_COMMAND_PKT ; 
 int /*<<< orphan*/  HCI_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  PKT_BAUD_RATE_115200 ; 
 int /*<<< orphan*/  PKT_BAUD_RATE_230400 ; 
 int /*<<< orphan*/  PKT_BAUD_RATE_460800 ; 
 int /*<<< orphan*/  PKT_BAUD_RATE_57600 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev, int baud)
{
	bluecard_info_t *info = (bluecard_info_t *)(hdev->driver_data);
	struct sk_buff *skb;

	/* Ericsson baud rate command */
	unsigned char cmd[] = { HCI_COMMAND_PKT, 0x09, 0xfc, 0x01, 0x03 };

	if (!(skb = FUNC3(HCI_MAX_FRAME_SIZE, GFP_ATOMIC))) {
		FUNC0("Can't allocate mem for new packet");
		return -1;
	}

	switch (baud) {
	case 460800:
		cmd[4] = 0x00;
		FUNC2(skb)->pkt_type = PKT_BAUD_RATE_460800;
		break;
	case 230400:
		cmd[4] = 0x01;
		FUNC2(skb)->pkt_type = PKT_BAUD_RATE_230400;
		break;
	case 115200:
		cmd[4] = 0x02;
		FUNC2(skb)->pkt_type = PKT_BAUD_RATE_115200;
		break;
	case 57600:
		/* Fall through... */
	default:
		cmd[4] = 0x03;
		FUNC2(skb)->pkt_type = PKT_BAUD_RATE_57600;
		break;
	}

	FUNC4(FUNC5(skb, sizeof(cmd)), cmd, sizeof(cmd));

	FUNC6(&(info->txq), skb);

	FUNC1(info);

	return 0;
}