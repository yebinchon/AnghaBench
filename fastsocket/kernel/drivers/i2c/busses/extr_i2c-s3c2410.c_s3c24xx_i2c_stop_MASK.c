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
struct s3c24xx_i2c {int /*<<< orphan*/  state; scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ S3C2410_IICSTAT ; 
 unsigned long S3C2410_IICSTAT_START ; 
 int /*<<< orphan*/  STATE_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_i2c*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct s3c24xx_i2c *i2c, int ret)
{
	unsigned long iicstat = FUNC1(i2c->regs + S3C2410_IICSTAT);

	FUNC0(i2c->dev, "STOP\n");

	/* stop the transfer */
	iicstat &= ~S3C2410_IICSTAT_START;
	FUNC4(iicstat, i2c->regs + S3C2410_IICSTAT);

	i2c->state = STATE_STOP;

	FUNC3(i2c, ret);
	FUNC2(i2c);
}