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
typedef  int uint8_t ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct asus_oled_packet {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
#define  ASUS_OLED_FLASH 130 
 size_t ASUS_OLED_PACKET_BUF_SIZE ; 
#define  ASUS_OLED_ROLL 129 
#define  ASUS_OLED_STATIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_oled_packet*,int,int,int,int,int,int,int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,struct asus_oled_packet*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int) ; 

__attribute__((used)) static void FUNC5(struct usb_device *udev,
			 struct asus_oled_packet *packet,
			 char *buf, uint8_t p_type, size_t p_num)
{
	size_t i;
	int act_len;

	for (i = 0; i < p_num; i++) {
		int retval;

		switch (p_type) {
		case ASUS_OLED_ROLL:
			FUNC2(packet, 0x40, 0x80, p_num,
					    i + 1, 0x00, 0x01, 0xff);
			break;
		case ASUS_OLED_STATIC:
			FUNC2(packet, 0x10 + i, 0x80, 0x01,
					    0x01, 0x00, 0x01, 0x00);
			break;
		case ASUS_OLED_FLASH:
			FUNC2(packet, 0x10 + i, 0x80, 0x01,
					    0x01, 0x00, 0x00, 0xff);
			break;
		}

		FUNC1(packet->bitmap, buf + (ASUS_OLED_PACKET_BUF_SIZE*i),
		       ASUS_OLED_PACKET_BUF_SIZE);

		retval = FUNC3(udev, FUNC4(udev, 2),
				      packet, sizeof(struct asus_oled_packet),
				      &act_len, -1);

		if (retval)
			FUNC0(&udev->dev, "retval = %d\n", retval);
	}
}