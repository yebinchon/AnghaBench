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
struct sd {int* jpeg_hdr; scalar_t__ ag_cnt; int /*<<< orphan*/  avg_lum; } ;
struct gspca_dev {int last_packet_type; int* image; int image_len; } ;

/* Variables and functions */
#define  DISCARD_PACKET 129 
 int const FIRST_PACKET ; 
 int const INTER_PACKET ; 
 int JPEG_HDR_SZ ; 
#define  LAST_PACKET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int const,int*,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev,
			u8 *data,			/* isoc packet */
			int len)			/* iso packet length */
{
	struct sd *sd = (struct sd *) gspca_dev;
	int sof, avg_lum;

	/* the image ends on a 64 bytes block starting with
	 *	ff d9 ff ff 00 c4 c4 96
	 * and followed by various information including luminosity */
	/* this block may be splitted between two packets */
	/* a new image always starts in a new packet */
	switch (gspca_dev->last_packet_type) {
	case DISCARD_PACKET:		/* restart image building */
		sof = len - 64;
		if (sof >= 0 && data[sof] == 0xff && data[sof + 1] == 0xd9)
			FUNC1(gspca_dev, LAST_PACKET, NULL, 0);
		return;
	case LAST_PACKET:		/* put the JPEG 422 header */
		FUNC1(gspca_dev, FIRST_PACKET,
				sd->jpeg_hdr, JPEG_HDR_SZ);
		break;
	}
	FUNC1(gspca_dev, INTER_PACKET, data, len);

	data = gspca_dev->image;
	if (data == NULL)
		return;
	sof = gspca_dev->image_len - 64;
	if (data[sof] != 0xff
	 || data[sof + 1] != 0xd9)
		return;

	/* end of image found - remove the trailing data */
	gspca_dev->image_len = sof + 2;
	FUNC1(gspca_dev, LAST_PACKET, NULL, 0);
	if (sd->ag_cnt < 0)
		return;
/* w1 w2 w3 */
/* w4 w5 w6 */
/* w7 w8 */
/* w4 */
	avg_lum = ((data[sof + 29] << 8) | data[sof + 30]) >> 6;
/* w6 */
	avg_lum += ((data[sof + 33] << 8) | data[sof + 34]) >> 6;
/* w2 */
	avg_lum += ((data[sof + 25] << 8) | data[sof + 26]) >> 6;
/* w8 */
	avg_lum += ((data[sof + 37] << 8) | data[sof + 38]) >> 6;
/* w5 */
	avg_lum += ((data[sof + 31] << 8) | data[sof + 32]) >> 4;
	avg_lum >>= 4;
	FUNC0(&sd->avg_lum, avg_lum);
}