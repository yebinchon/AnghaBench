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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c51 ; 
 int /*<<< orphan*/  c61 ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dat_init1 ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tbl_init_at_startup ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	FUNC4(gspca_dev, tbl_init_at_startup,
			FUNC0(tbl_init_at_startup));

	FUNC3(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_init1);

	FUNC1(gspca_dev);

	FUNC2(gspca_dev, 0xc0, 2, 0x0000, 0x0006, 1, c61);

	FUNC3(gspca_dev, 0x40, 1, 0x00ef, 0x0006, 0, NULL);

	FUNC2(gspca_dev, 0xc0, 2, 0x0000, 0x0000, 1, c51);

	FUNC3(gspca_dev, 0x40, 1, 0x0051, 0x0000, 0, NULL);
/*	ctrl_out(gspca_dev, 0x40, 11, 0x0000, 0x0000, 0, NULL); */

	return 0;
}