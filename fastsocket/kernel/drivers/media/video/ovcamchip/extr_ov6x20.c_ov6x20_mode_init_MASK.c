#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ovcamchip_window {scalar_t__ format; int clockdiv; scalar_t__ quarter; } ;
struct i2c_client {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ I2C_HW_SMBUS_OV518 ; 
 scalar_t__ VIDEO_PALETTE_GREY ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *c, struct ovcamchip_window *win)
{
	/******** QCIF-specific regs ********/

	FUNC0(c, 0x14, win->quarter?0x24:0x04);

	/******** Palette-specific regs ********/

	/* OV518 needs 8 bit multiplexed in color mode, and 16 bit in B&W */
	if (c->adapter->id == I2C_HW_SMBUS_OV518) {
		if (win->format == VIDEO_PALETTE_GREY)
			FUNC1(c, 0x13, 0x00, 0x20);
		else
			FUNC1(c, 0x13, 0x20, 0x20);
	} else {
		if (win->format == VIDEO_PALETTE_GREY)
			FUNC1(c, 0x13, 0x20, 0x20);
		else
			FUNC1(c, 0x13, 0x00, 0x20);
	}

	/******** Clock programming ********/

	/* The OV6620 needs special handling. This prevents the
	 * severe banding that normally occurs */

	/* Clock down */
	FUNC0(c, 0x2a, 0x04);

	FUNC0(c, 0x11, win->clockdiv);

	FUNC0(c, 0x2a, 0x84);
	/* This next setting is critical. It seems to improve
	 * the gain or the contrast. The "reserved" bits seem
	 * to have some effect in this case. */
	FUNC0(c, 0x2d, 0x85); /* FIXME: This messes up banding filter */

	return 0;
}