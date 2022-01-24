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
typedef  int /*<<< orphan*/  u16 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev,
			     u8 req, u16 idx, u16 val)
{
	u16 notdone;

	FUNC3(gspca_dev, req, idx, val);
	notdone = FUNC2(gspca_dev, 0x01, 0x0001, 1);
	FUNC3(gspca_dev, req, idx, val);

	FUNC0(D_FRAM, "before wait 0x%04x", notdone);

	FUNC1(200);
	notdone = FUNC2(gspca_dev, 0x01, 0x0001, 1);
	FUNC0(D_FRAM, "after wait 0x%04x", notdone);
}