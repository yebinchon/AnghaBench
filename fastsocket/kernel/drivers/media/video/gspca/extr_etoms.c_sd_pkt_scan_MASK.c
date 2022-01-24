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
struct gspca_dev {int /*<<< orphan*/  last_packet_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCARD_PACKET ; 
 int /*<<< orphan*/  D_FRAM ; 
 int /*<<< orphan*/  FIRST_PACKET ; 
 int /*<<< orphan*/  INTER_PACKET ; 
 int /*<<< orphan*/  LAST_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev,
			u8 *data,			/* isoc packet */
			int len)			/* iso packet length */
{
	int seqframe;

	seqframe = data[0] & 0x3f;
	len = (int) (((data[0] & 0xc0) << 2) | data[1]);
	if (seqframe == 0x3f) {
		FUNC0(D_FRAM,
		       "header packet found datalength %d !!", len);
		FUNC0(D_FRAM, "G %d R %d G %d B %d",
		       data[2], data[3], data[4], data[5]);
		data += 30;
		/* don't change datalength as the chips provided it */
		FUNC1(gspca_dev, LAST_PACKET, NULL, 0);
		FUNC1(gspca_dev, FIRST_PACKET, data, len);
		return;
	}
	if (len) {
		data += 8;
		FUNC1(gspca_dev, INTER_PACKET, data, len);
	} else {			/* Drop Packet */
		gspca_dev->last_packet_type = DISCARD_PACKET;
	}
}