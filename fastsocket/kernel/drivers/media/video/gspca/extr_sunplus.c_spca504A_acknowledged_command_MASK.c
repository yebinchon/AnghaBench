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
typedef  int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev,
			u8 req,
			u16 idx, u16 val, u16 endcode, u8 count)
{
	u16 status;

	FUNC3(gspca_dev, req, idx, val);
	status = FUNC2(gspca_dev, 0x01, 0x0001, 1);
	if (gspca_dev->usb_err < 0)
		return;
	FUNC0(D_FRAM, "Status 0x%04x Need 0x%04x", status, endcode);
	if (!count)
		return;
	count = 200;
	while (--count > 0) {
		FUNC1(10);
		/* gsmart mini2 write a each wait setting 1 ms is enough */
/*		reg_w_riv(gspca_dev, req, idx, val); */
		status = FUNC2(gspca_dev, 0x01, 0x0001, 1);
		if (status == endcode) {
			FUNC0(D_FRAM, "status 0x%04x after wait %d",
				status, 200 - count);
				break;
		}
	}
}