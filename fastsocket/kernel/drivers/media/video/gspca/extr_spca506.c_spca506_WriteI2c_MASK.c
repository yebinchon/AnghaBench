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
struct gspca_dev {int* usb_buf; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, __u16 valeur,
			     __u16 reg)
{
	int retry = 60;

	FUNC1(gspca_dev->dev, 0x07, reg, 0x0001);
	FUNC1(gspca_dev->dev, 0x07, valeur, 0x0000);
	while (retry--) {
		FUNC0(gspca_dev, 0x07, 0x0003, 2);
		if ((gspca_dev->usb_buf[0] | gspca_dev->usb_buf[1]) == 0x00)
			break;
	}
}