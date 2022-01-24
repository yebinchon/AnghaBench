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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dat_common00 ; 
 int /*<<< orphan*/ * dat_common01 ; 
 int /*<<< orphan*/ * dat_common02 ; 
 int /*<<< orphan*/ * dat_common03 ; 
 int /*<<< orphan*/ * dat_common04 ; 
 int /*<<< orphan*/ * dat_common05 ; 
 int /*<<< orphan*/ * dat_common06 ; 
 int /*<<< orphan*/ * dat_common07 ; 
 int /*<<< orphan*/ * dat_common08 ; 
 int /*<<< orphan*/ * dat_common09 ; 
 int /*<<< orphan*/ * dat_common10 ; 
 int /*<<< orphan*/ * dat_common11 ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tbl_common ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	s32 n; /* reserved for FETCH functions */

	FUNC1(gspca_dev, 0x40, 3, 0x0000, 0x0200, 22, dat_common00);
	FUNC1(gspca_dev, 0x40, 1, 0x0041, 0x0000, 0, NULL);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 32, dat_common01);
	n = FUNC2(gspca_dev, tbl_common, FUNC0(tbl_common));
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common02);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common03);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 16, dat_common04);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common05);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 44, dat_common06);
	FUNC3(gspca_dev, tbl_common,
					FUNC0(tbl_common), n);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 52, dat_common07);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common08);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common09);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 56, dat_common10);
	FUNC3(gspca_dev, tbl_common,
					FUNC0(tbl_common), n);
	FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, dat_common11);
	FUNC3(gspca_dev, tbl_common,
					FUNC0(tbl_common), n);
}