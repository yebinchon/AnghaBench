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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int** cx_sensor_init ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	int i = 0;

	FUNC1(gspca_dev, 0x0010, 0x00);
	FUNC1(gspca_dev, 0x0053, 0x00);
	FUNC1(gspca_dev, 0x0052, 0x00);
	FUNC1(gspca_dev, 0x009b, 0x2f);
	FUNC1(gspca_dev, 0x009c, 0x10);
	FUNC0(gspca_dev, 0x0098, 1);
	FUNC1(gspca_dev, 0x0098, 0x40);
	FUNC0(gspca_dev, 0x0099, 1);
	FUNC1(gspca_dev, 0x0099, 0x07);
	FUNC1(gspca_dev, 0x0039, 0x40);
	FUNC1(gspca_dev, 0x003c, 0xff);
	FUNC1(gspca_dev, 0x003f, 0x1f);
	FUNC1(gspca_dev, 0x003d, 0x40);
/*	reg_w_val(gspca_dev, 0x003d, 0x60); */
	FUNC0(gspca_dev, 0x0099, 1);			/* ->0x07 */

	while (cx_sensor_init[i][0]) {
		FUNC1(gspca_dev, 0x00e5, cx_sensor_init[i][0]);
		FUNC0(gspca_dev, 0x00e8, 1);		/* -> 0x00 */
		if (i == 1) {
			FUNC1(gspca_dev, 0x00ed, 0x01);
			FUNC0(gspca_dev, 0x00ed, 1);	/* -> 0x01 */
		}
		i++;
	}
	FUNC1(gspca_dev, 0x00c3, 0x00);
}