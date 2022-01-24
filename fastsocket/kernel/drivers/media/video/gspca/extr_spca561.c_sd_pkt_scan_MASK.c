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
struct sd {int /*<<< orphan*/  chip_revision; } ;
struct gspca_dev {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  last_packet_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCARD_PACKET ; 
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  FIRST_PACKET ; 
 int /*<<< orphan*/  INTER_PACKET ; 
 int /*<<< orphan*/  KEY_CAMERA ; 
 int /*<<< orphan*/  LAST_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  Rev012A ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev,
			u8 *data,		/* isoc packet */
			int len)		/* iso packet length */
{
	struct sd *sd = (struct sd *) gspca_dev;

	len--;
	switch (*data++) {			/* sequence number */
	case 0:					/* start of frame */
		FUNC1(gspca_dev, LAST_PACKET, NULL, 0);

		/* This should never happen */
		if (len < 2) {
			FUNC0(D_ERR, "Short SOF packet, ignoring");
			gspca_dev->last_packet_type = DISCARD_PACKET;
			return;
		}

#if defined(CONFIG_INPUT) || defined(CONFIG_INPUT_MODULE)
		if (data[0] & 0x20) {
			input_report_key(gspca_dev->input_dev, KEY_CAMERA, 1);
			input_sync(gspca_dev->input_dev);
			input_report_key(gspca_dev->input_dev, KEY_CAMERA, 0);
			input_sync(gspca_dev->input_dev);
		}
#endif

		if (data[1] & 0x10) {
			/* compressed bayer */
			FUNC1(gspca_dev, FIRST_PACKET, data, len);
		} else {
			/* raw bayer (with a header, which we skip) */
			if (sd->chip_revision == Rev012A) {
				data += 20;
				len -= 20;
			} else {
				data += 16;
				len -= 16;
			}
			FUNC1(gspca_dev, FIRST_PACKET, data, len);
		}
		return;
	case 0xff:			/* drop (empty mpackets) */
		return;
	}
	FUNC1(gspca_dev, INTER_PACKET, data, len);
}