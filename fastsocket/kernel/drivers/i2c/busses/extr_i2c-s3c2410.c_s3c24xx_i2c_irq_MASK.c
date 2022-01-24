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
struct s3c24xx_i2c {scalar_t__ state; scalar_t__ regs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ S3C2410_IICCON ; 
 unsigned long S3C2410_IICCON_IRQPEND ; 
 scalar_t__ S3C2410_IICSTAT ; 
 unsigned long S3C2410_IICSTAT_ARBITR ; 
 scalar_t__ STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_i2c*,unsigned long) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irqno, void *dev_id)
{
	struct s3c24xx_i2c *i2c = dev_id;
	unsigned long status;
	unsigned long tmp;

	status = FUNC3(i2c->regs + S3C2410_IICSTAT);

	if (status & S3C2410_IICSTAT_ARBITR) {
		/* deal with arbitration loss */
		FUNC1(i2c->dev, "deal with arbitration loss\n");
	}

	if (i2c->state == STATE_IDLE) {
		FUNC0(i2c->dev, "IRQ: error i2c->state == IDLE\n");

		tmp = FUNC3(i2c->regs + S3C2410_IICCON);
		tmp &= ~S3C2410_IICCON_IRQPEND;
		FUNC4(tmp, i2c->regs +  S3C2410_IICCON);
		goto out;
	}

	/* pretty much this leaves us with the fact that we've
	 * transmitted or received whatever byte we last sent */

	FUNC2(i2c, status);

 out:
	return IRQ_HANDLED;
}