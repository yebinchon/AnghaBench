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
struct s3c24xx_i2c {scalar_t__ regs; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ S3C2410_IICSTAT ; 
 unsigned long S3C2410_IICSTAT_BUSBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct s3c24xx_i2c *i2c)
{
	unsigned long iicstat;
	int timeout = 400;

	while (timeout-- > 0) {
		iicstat = FUNC1(i2c->regs + S3C2410_IICSTAT);

		if (!(iicstat & S3C2410_IICSTAT_BUSBUSY))
			return 0;

		FUNC0(1);
	}

	return -ETIMEDOUT;
}