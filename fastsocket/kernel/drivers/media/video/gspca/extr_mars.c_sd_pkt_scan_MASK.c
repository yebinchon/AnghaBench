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
struct sd {int* jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PACK ; 
 int /*<<< orphan*/  FIRST_PACKET ; 
 int /*<<< orphan*/  INTER_PACKET ; 
 int JPEG_HDR_SZ ; 
 int /*<<< orphan*/  LAST_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev,
			u8 *data,			/* isoc packet */
			int len)			/* iso packet length */
{
	struct sd *sd = (struct sd *) gspca_dev;
	int p;

	if (len < 6) {
/*		gspca_dev->last_packet_type = DISCARD_PACKET; */
		return;
	}
	for (p = 0; p < len - 6; p++) {
		if (data[0 + p] == 0xff
		    && data[1 + p] == 0xff
		    && data[2 + p] == 0x00
		    && data[3 + p] == 0xff
		    && data[4 + p] == 0x96) {
			if (data[5 + p] == 0x64
			    || data[5 + p] == 0x65
			    || data[5 + p] == 0x66
			    || data[5 + p] == 0x67) {
				FUNC0(D_PACK, "sof offset: %d len: %d",
					p, len);
				FUNC1(gspca_dev, LAST_PACKET,
						data, p);

				/* put the JPEG header */
				FUNC1(gspca_dev, FIRST_PACKET,
					sd->jpeg_hdr, JPEG_HDR_SZ);
				data += p + 16;
				len -= p + 16;
				break;
			}
		}
	}
	FUNC1(gspca_dev, INTER_PACKET, data, len);
}