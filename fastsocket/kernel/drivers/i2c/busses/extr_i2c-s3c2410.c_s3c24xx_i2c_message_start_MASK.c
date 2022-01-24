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
struct s3c24xx_i2c {scalar_t__ regs; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_setup; } ;
struct i2c_msg {int addr; int flags; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int I2C_M_REV_DIR_ADDR ; 
 scalar_t__ S3C2410_IICCON ; 
 scalar_t__ S3C2410_IICDS ; 
 scalar_t__ S3C2410_IICSTAT ; 
 unsigned long S3C2410_IICSTAT_MASTER_RX ; 
 unsigned long S3C2410_IICSTAT_MASTER_TX ; 
 unsigned long S3C2410_IICSTAT_START ; 
 unsigned long S3C2410_IICSTAT_TXRXEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct s3c24xx_i2c *i2c,
				      struct i2c_msg *msg)
{
	unsigned int addr = (msg->addr & 0x7f) << 1;
	unsigned long stat;
	unsigned long iiccon;

	stat = 0;
	stat |=  S3C2410_IICSTAT_TXRXEN;

	if (msg->flags & I2C_M_RD) {
		stat |= S3C2410_IICSTAT_MASTER_RX;
		addr |= 1;
	} else
		stat |= S3C2410_IICSTAT_MASTER_TX;

	if (msg->flags & I2C_M_REV_DIR_ADDR)
		addr ^= 1;

	/* todo - check for wether ack wanted or not */
	FUNC3(i2c);

	iiccon = FUNC2(i2c->regs + S3C2410_IICCON);
	FUNC5(stat, i2c->regs + S3C2410_IICSTAT);

	FUNC0(i2c->dev, "START: %08lx to IICSTAT, %02x to DS\n", stat, addr);
	FUNC4(addr, i2c->regs + S3C2410_IICDS);

	/* delay here to ensure the data byte has gotten onto the bus
	 * before the transaction is started */

	FUNC1(i2c->tx_setup);

	FUNC0(i2c->dev, "iiccon, %08lx\n", iiccon);
	FUNC5(iiccon, i2c->regs + S3C2410_IICCON);

	stat |= S3C2410_IICSTAT_START;
	FUNC5(stat, i2c->regs + S3C2410_IICSTAT);
}