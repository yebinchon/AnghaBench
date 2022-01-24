#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct asus_oled_packet {int dummy; } ;
struct asus_oled_dev {size_t buf_size; scalar_t__ pack_mode; int /*<<< orphan*/  buf; TYPE_1__* udev; int /*<<< orphan*/  pic_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t ASUS_OLED_PACKET_BUF_SIZE ; 
 int /*<<< orphan*/  ASUS_OLED_ROLL ; 
 int /*<<< orphan*/  ASUS_OLED_STATIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PACK_MODE_G1 ; 
 scalar_t__ PACK_MODE_G50 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_oled_packet*) ; 
 struct asus_oled_packet* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct asus_oled_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct asus_oled_packet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct asus_oled_dev *odev)
{
	size_t packet_num = odev->buf_size / ASUS_OLED_PACKET_BUF_SIZE;
	struct asus_oled_packet *packet;

	packet = FUNC2(sizeof(struct asus_oled_packet), GFP_KERNEL);

	if (!packet) {
		FUNC0(&odev->udev->dev, "out of memory\n");
		return;
	}

	if (odev->pack_mode == PACK_MODE_G1) {
		/* When sending roll-mode data the display updated only
		   first packet.  I have no idea why, but when static picture
		   is sent just before rolling picture everything works fine. */
		if (odev->pic_mode == ASUS_OLED_ROLL)
			FUNC3(odev->udev, packet, odev->buf,
				     ASUS_OLED_STATIC, 2);

		/* Only ROLL mode can use more than 2 packets.*/
		if (odev->pic_mode != ASUS_OLED_ROLL && packet_num > 2)
			packet_num = 2;

		FUNC3(odev->udev, packet, odev->buf,
			     odev->pic_mode, packet_num);
	} else if (odev->pack_mode == PACK_MODE_G50) {
		FUNC4(odev->udev, packet, odev->buf);
	}

	FUNC1(packet);
}