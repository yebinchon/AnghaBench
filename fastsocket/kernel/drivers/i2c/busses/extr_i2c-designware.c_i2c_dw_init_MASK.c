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
typedef  int u32 ;
typedef  int u16 ;
struct dw_i2c_dev {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ DW_IC_CON ; 
 int DW_IC_CON_MASTER ; 
 int DW_IC_CON_RESTART_EN ; 
 int DW_IC_CON_SLAVE_DISABLE ; 
 int DW_IC_CON_SPEED_FAST ; 
 scalar_t__ DW_IC_ENABLE ; 
 scalar_t__ DW_IC_FS_SCL_HCNT ; 
 scalar_t__ DW_IC_FS_SCL_LCNT ; 
 scalar_t__ DW_IC_SS_SCL_HCNT ; 
 scalar_t__ DW_IC_SS_SCL_LCNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct dw_i2c_dev *dev)
{
	u32 input_clock_khz = FUNC0(dev->clk) / 1000;
	u16 ic_con;

	/* Disable the adapter */
	FUNC1(0, dev->base + DW_IC_ENABLE);

	/* set standard and fast speed deviders for high/low periods */
	FUNC2((input_clock_khz * 40 / 10000)+1, /* std speed high, 4us */
			dev->base + DW_IC_SS_SCL_HCNT);
	FUNC2((input_clock_khz * 47 / 10000)+1, /* std speed low, 4.7us */
			dev->base + DW_IC_SS_SCL_LCNT);
	FUNC2((input_clock_khz *  6 / 10000)+1, /* fast speed high, 0.6us */
			dev->base + DW_IC_FS_SCL_HCNT);
	FUNC2((input_clock_khz * 13 / 10000)+1, /* fast speed low, 1.3us */
			dev->base + DW_IC_FS_SCL_LCNT);

	/* configure the i2c master */
	ic_con = DW_IC_CON_MASTER | DW_IC_CON_SLAVE_DISABLE |
		DW_IC_CON_RESTART_EN | DW_IC_CON_SPEED_FAST;
	FUNC2(ic_con, dev->base + DW_IC_CON);
}