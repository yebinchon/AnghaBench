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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  tbl_init_at_startup ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	u8 c;

	FUNC2(gspca_dev, 0xc0, 2, 0x0000, 0x0004, 1, &c);
	FUNC2(gspca_dev, 0xc0, 2, 0x0000, 0x0004, 1, &c);

	FUNC4(gspca_dev, tbl_init_at_startup,
			FUNC0(tbl_init_at_startup));

	FUNC3(gspca_dev, 0x40,  1, 0x7a00, 0x8030,  0, NULL);
	FUNC2(gspca_dev, 0xc0,  2, 0x7a00, 0x8030,  1, &c);

	FUNC1(gspca_dev);

	FUNC5(61);
/*	ctrl_out(gspca_dev, 0x40, 11, 0x0000, 0x0000,  0, NULL); */
/*	msleep(36); */
	FUNC3(gspca_dev, 0x40,  1, 0x0001, 0x0000,  0, NULL);

	return 0;
}