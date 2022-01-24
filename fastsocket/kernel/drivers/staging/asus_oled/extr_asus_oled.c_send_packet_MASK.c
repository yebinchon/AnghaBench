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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct asus_oled_packet {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_oled_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,struct asus_oled_packet*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int) ; 

__attribute__((used)) static void FUNC5(struct usb_device *udev,
			struct asus_oled_packet *packet,
			size_t offset, size_t len, char *buf, uint8_t b1,
			uint8_t b2, uint8_t b3, uint8_t b4, uint8_t b5,
			uint8_t b6) {
	int retval;
	int act_len;

	FUNC2(packet, b1, b2, b3, b4, b5, b6, 0x00);
	FUNC1(packet->bitmap, buf + offset, len);

	retval = FUNC3(udev,
			      FUNC4(udev, 2),
			      packet,
			      sizeof(struct asus_oled_packet),
			      &act_len,
			      -1);

	if (retval)
		FUNC0(&udev->dev, "retval = %d\n", retval);
}