#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct s3c24xx_i2c {unsigned long clkrate; scalar_t__ regs; TYPE_1__* dev; int /*<<< orphan*/  clk; } ;
struct s3c2410_platform_i2c {unsigned long frequency; int sda_delay; } ;
struct TYPE_3__ {struct s3c2410_platform_i2c* platform_data; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
 scalar_t__ S3C2410_IICCON ; 
 unsigned int S3C2410_IICCON_SCALEMASK ; 
 unsigned int S3C2410_IICCON_TXDIV_512 ; 
 unsigned long S3C2410_IICLC_FILTER_ON ; 
 scalar_t__ S3C2440_IICLC ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned long,int) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int FUNC5 (unsigned long,unsigned long,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC6 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct s3c24xx_i2c *i2c, unsigned int *got)
{
	struct s3c2410_platform_i2c *pdata = i2c->dev->platform_data;
	unsigned long clkin = FUNC1(i2c->clk);
	unsigned int divs, div1;
	unsigned long target_frequency;
	u32 iiccon;
	int freq;

	i2c->clkrate = clkin;
	clkin /= 1000;		/* clkin now in KHz */

	FUNC2(i2c->dev, "pdata desired frequency %lu\n", pdata->frequency);

	target_frequency = pdata->frequency ? pdata->frequency : 100000;

	target_frequency /= 1000; /* Target frequency now in KHz */

	freq = FUNC5(clkin, target_frequency, &div1, &divs);

	if (freq > target_frequency) {
		FUNC3(i2c->dev,
			"Unable to achieve desired frequency %luKHz."	\
			" Lowest achievable %dKHz\n", target_frequency, freq);
		return -EINVAL;
	}

	*got = freq;

	iiccon = FUNC4(i2c->regs + S3C2410_IICCON);
	iiccon &= ~(S3C2410_IICCON_SCALEMASK | S3C2410_IICCON_TXDIV_512);
	iiccon |= (divs-1);

	if (div1 == 512)
		iiccon |= S3C2410_IICCON_TXDIV_512;

	FUNC7(iiccon, i2c->regs + S3C2410_IICCON);

	if (FUNC6(i2c)) {
		unsigned long sda_delay;

		if (pdata->sda_delay) {
			sda_delay = (freq / 1000) * pdata->sda_delay;
			sda_delay /= 1000000;
			sda_delay = FUNC0(sda_delay, 5);
			if (sda_delay > 3)
				sda_delay = 3;
			sda_delay |= S3C2410_IICLC_FILTER_ON;
		} else
			sda_delay = 0;

		FUNC2(i2c->dev, "IICLC=%08lx\n", sda_delay);
		FUNC7(sda_delay, i2c->regs + S3C2440_IICLC);
	}

	return 0;
}