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
struct pcf50633 {int* mask_regs; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int PCF50633_REG_INT1M ; 
 int FUNC0 (struct pcf50633*,int,int,int*) ; 
 int FUNC1 (struct pcf50633*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pcf50633 *pcf, int irq, u8 mask)
{
	u8 reg, bits, tmp;
	int ret = 0, idx;

	idx = irq >> 3;
	reg =  PCF50633_REG_INT1M + idx;
	bits = 1 << (irq & 0x07);

	FUNC2(&pcf->lock);

	if (mask) {
		ret = FUNC0(pcf, reg, 1, &tmp);
		if (ret < 0)
			goto out;

		tmp |= bits;

		ret = FUNC1(pcf, reg, 1, &tmp);
		if (ret < 0)
			goto out;

		pcf->mask_regs[idx] &= ~bits;
		pcf->mask_regs[idx] |= bits;
	} else {
		ret = FUNC0(pcf, reg, 1, &tmp);
		if (ret < 0)
			goto out;

		tmp &= ~bits;

		ret = FUNC1(pcf, reg, 1, &tmp);
		if (ret < 0)
			goto out;

		pcf->mask_regs[idx] &= ~bits;
	}
out:
	FUNC3(&pcf->lock);

	return ret;
}