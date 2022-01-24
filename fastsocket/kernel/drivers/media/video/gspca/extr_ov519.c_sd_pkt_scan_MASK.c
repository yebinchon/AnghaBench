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
typedef  int /*<<< orphan*/  u8 ;
struct sd {int bridge; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
#define  BRIDGE_OV511 134 
#define  BRIDGE_OV511PLUS 133 
#define  BRIDGE_OV518 132 
#define  BRIDGE_OV518PLUS 131 
#define  BRIDGE_OV519 130 
#define  BRIDGE_OVFX2 129 
#define  BRIDGE_W9968CF 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev,
			u8 *data,			/* isoc packet */
			int len)			/* iso packet length */
{
	struct sd *sd = (struct sd *) gspca_dev;

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		FUNC0(gspca_dev, data, len);
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		FUNC1(gspca_dev, data, len);
		break;
	case BRIDGE_OV519:
		FUNC2(gspca_dev, data, len);
		break;
	case BRIDGE_OVFX2:
		FUNC3(gspca_dev, data, len);
		break;
	case BRIDGE_W9968CF:
		FUNC4(gspca_dev, data, len);
		break;
	}
}