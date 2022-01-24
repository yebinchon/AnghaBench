#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	u8 mode;

	FUNC0(gspca_dev, 0x00, 0x2520, 1);
	FUNC3(gspca_dev);
	FUNC1(gspca_dev, 0xc5, 0x0003, 0x0000);
	FUNC4(gspca_dev);

	FUNC3(gspca_dev);
	mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
	FUNC2(gspca_dev, 0x25, 0x0000, 0x0004, mode);
	FUNC0(gspca_dev, 0x25, 0x0004, 1);
	FUNC2(gspca_dev, 0x27, 0x0000, 0x0000, 0x06);
	FUNC0(gspca_dev, 0x27, 0x0000, 1);
	return gspca_dev->usb_err;
}