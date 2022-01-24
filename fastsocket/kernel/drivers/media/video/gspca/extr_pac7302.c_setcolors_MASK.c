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
struct sd {int const colors; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int const COLOR_MAX ; 
 int D_CONF ; 
 int D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i, v;
	static const int a[9] =
		{217, -212, 0, -101, 170, -67, -38, -315, 355};
	static const int b[9] =
		{19, 106, 0, 19, 106, 1, 19, 106, 1};

	FUNC1(gspca_dev, 0xff, 0x03);			/* page 3 */
	FUNC1(gspca_dev, 0x11, 0x01);
	FUNC1(gspca_dev, 0xff, 0x00);			/* page 0 */
	for (i = 0; i < 9; i++) {
		v = a[i] * sd->colors / COLOR_MAX + b[i];
		FUNC1(gspca_dev, 0x0f + 2 * i, (v >> 8) & 0x07);
		FUNC1(gspca_dev, 0x0f + 2 * i + 1, v);
	}
	FUNC1(gspca_dev, 0xdc, 0x01);
	FUNC0(D_CONF|D_STREAM, "color: %i", sd->colors);
}