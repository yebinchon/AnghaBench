#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct s3c24xx_i2c {TYPE_1__* dev; scalar_t__ regs; } ;
struct s3c2410_platform_i2c {unsigned int slave_addr; int /*<<< orphan*/  (* cfg_gpio ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct s3c2410_platform_i2c* platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2410_IICADD ; 
 scalar_t__ S3C2410_IICCON ; 
 unsigned long S3C2410_IICCON_ACKEN ; 
 unsigned long S3C2410_IICCON_IRQEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,unsigned int) ; 
 scalar_t__ FUNC3 (struct s3c24xx_i2c*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct s3c24xx_i2c *i2c)
{
	unsigned long iicon = S3C2410_IICCON_IRQEN | S3C2410_IICCON_ACKEN;
	struct s3c2410_platform_i2c *pdata;
	unsigned int freq;

	/* get the plafrom data */

	pdata = i2c->dev->platform_data;

	/* inititalise the gpio */

	if (pdata->cfg_gpio)
		pdata->cfg_gpio(FUNC5(i2c->dev));

	/* write slave address */

	FUNC6(pdata->slave_addr, i2c->regs + S3C2410_IICADD);

	FUNC2(i2c->dev, "slave address 0x%02x\n", pdata->slave_addr);

	FUNC7(iicon, i2c->regs + S3C2410_IICCON);

	/* we need to work out the divisors for the clock... */

	if (FUNC3(i2c, &freq) != 0) {
		FUNC7(0, i2c->regs + S3C2410_IICCON);
		FUNC1(i2c->dev, "cannot meet bus frequency required\n");
		return -EINVAL;
	}

	/* todo - check that the i2c lines aren't being dragged anywhere */

	FUNC2(i2c->dev, "bus frequency set to %d KHz\n", freq);
	FUNC0(i2c->dev, "S3C2410_IICCON=0x%02lx\n", iicon);

	return 0;
}