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
struct ocores_i2c {int clock_khz; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCI2C_CMD ; 
 int OCI2C_CMD_IACK ; 
 int /*<<< orphan*/  OCI2C_CONTROL ; 
 int OCI2C_CTRL_EN ; 
 int OCI2C_CTRL_IEN ; 
 int /*<<< orphan*/  OCI2C_PREHIGH ; 
 int /*<<< orphan*/  OCI2C_PRELOW ; 
 int FUNC0 (struct ocores_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocores_i2c*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ocores_i2c *i2c)
{
	int prescale;
	u8 ctrl = FUNC0(i2c, OCI2C_CONTROL);

	/* make sure the device is disabled */
	FUNC1(i2c, OCI2C_CONTROL, ctrl & ~(OCI2C_CTRL_EN|OCI2C_CTRL_IEN));

	prescale = (i2c->clock_khz / (5*100)) - 1;
	FUNC1(i2c, OCI2C_PRELOW, prescale & 0xff);
	FUNC1(i2c, OCI2C_PREHIGH, prescale >> 8);

	/* Init the device */
	FUNC1(i2c, OCI2C_CMD, OCI2C_CMD_IACK);
	FUNC1(i2c, OCI2C_CONTROL, ctrl | OCI2C_CTRL_IEN | OCI2C_CTRL_EN);
}