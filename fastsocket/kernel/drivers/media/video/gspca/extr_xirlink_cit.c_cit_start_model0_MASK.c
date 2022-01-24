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
struct gspca_dev {int width; } ;

/* Variables and functions */
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,unsigned short const,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev)
{
	const unsigned short compression = 0; /* 0=none, 7=best frame rate */
	int clock_div;

	clock_div = FUNC0(gspca_dev);
	if (clock_div < 0)
		return clock_div;

	FUNC1(gspca_dev, 0x0000, 0x0100); /* turn on led */
	FUNC1(gspca_dev, 0x0003, 0x0438);
	FUNC1(gspca_dev, 0x001e, 0x042b);
	FUNC1(gspca_dev, 0x0041, 0x042c);
	FUNC1(gspca_dev, 0x0008, 0x0436);
	FUNC1(gspca_dev, 0x0024, 0x0403);
	FUNC1(gspca_dev, 0x002c, 0x0404);
	FUNC1(gspca_dev, 0x0002, 0x0426);
	FUNC1(gspca_dev, 0x0014, 0x0427);

	switch (gspca_dev->width) {
	case 160: /* 160x120 */
		FUNC1(gspca_dev, 0x0004, 0x010b);
		FUNC1(gspca_dev, 0x0001, 0x010a);
		FUNC1(gspca_dev, 0x0010, 0x0102);
		FUNC1(gspca_dev, 0x00a0, 0x0103);
		FUNC1(gspca_dev, 0x0000, 0x0104);
		FUNC1(gspca_dev, 0x0078, 0x0105);
		break;

	case 176: /* 176x144 */
		FUNC1(gspca_dev, 0x0006, 0x010b);
		FUNC1(gspca_dev, 0x0000, 0x010a);
		FUNC1(gspca_dev, 0x0005, 0x0102);
		FUNC1(gspca_dev, 0x00b0, 0x0103);
		FUNC1(gspca_dev, 0x0000, 0x0104);
		FUNC1(gspca_dev, 0x0090, 0x0105);
		break;

	case 320: /* 320x240 */
		FUNC1(gspca_dev, 0x0008, 0x010b);
		FUNC1(gspca_dev, 0x0004, 0x010a);
		FUNC1(gspca_dev, 0x0005, 0x0102);
		FUNC1(gspca_dev, 0x00a0, 0x0103);
		FUNC1(gspca_dev, 0x0010, 0x0104);
		FUNC1(gspca_dev, 0x0078, 0x0105);
		break;
	}

	FUNC1(gspca_dev, compression, 0x0109);
	FUNC1(gspca_dev, clock_div, 0x0111);

	return 0;
}