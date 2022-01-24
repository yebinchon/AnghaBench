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
struct s3c24xx_spi {unsigned int count; unsigned int len; int /*<<< orphan*/  done; scalar_t__ regs; void** rx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ S3C2410_SPRDAT ; 
 scalar_t__ S3C2410_SPSTA ; 
 unsigned int S3C2410_SPSTA_DCOL ; 
 unsigned int S3C2410_SPSTA_READY ; 
 scalar_t__ S3C2410_SPTDAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_spi*,unsigned int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	struct s3c24xx_spi *hw = dev;
	unsigned int spsta = FUNC3(hw->regs + S3C2410_SPSTA);
	unsigned int count = hw->count;

	if (spsta & S3C2410_SPSTA_DCOL) {
		FUNC1(hw->dev, "data-collision\n");
		FUNC0(&hw->done);
		goto irq_done;
	}

	if (!(spsta & S3C2410_SPSTA_READY)) {
		FUNC1(hw->dev, "spi not ready for tx?\n");
		FUNC0(&hw->done);
		goto irq_done;
	}

	hw->count++;

	if (hw->rx)
		hw->rx[count] = FUNC3(hw->regs + S3C2410_SPRDAT);

	count++;

	if (count < hw->len)
		FUNC4(FUNC2(hw, count), hw->regs + S3C2410_SPTDAT);
	else
		FUNC0(&hw->done);

 irq_done:
	return IRQ_HANDLED;
}