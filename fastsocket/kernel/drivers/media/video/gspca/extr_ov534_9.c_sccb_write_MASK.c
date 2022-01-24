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
 int /*<<< orphan*/  D_USBO ; 
 int /*<<< orphan*/  OV534_OP_WRITE_3 ; 
 int /*<<< orphan*/  OV534_REG_OPERATION ; 
 int /*<<< orphan*/  OV534_REG_SUBADDR ; 
 int /*<<< orphan*/  OV534_REG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev, u8 reg, u8 val)
{
	FUNC0(D_USBO, "sccb_write [%02x] = %02x", reg, val);
	FUNC2(gspca_dev, OV534_REG_SUBADDR, reg);
	FUNC2(gspca_dev, OV534_REG_WRITE, val);
	FUNC2(gspca_dev, OV534_REG_OPERATION, OV534_OP_WRITE_3);

	if (!FUNC3(gspca_dev))
		FUNC1("sccb_write failed");
}