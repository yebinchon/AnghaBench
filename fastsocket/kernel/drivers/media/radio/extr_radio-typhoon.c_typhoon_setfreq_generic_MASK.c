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
struct typhoon {int /*<<< orphan*/  lock; scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct typhoon *dev,
				   unsigned long frequency)
{
	unsigned long outval;
	unsigned long x;

	/*
	 * The frequency transfer curve is not linear. The best fit I could
	 * get is
	 *
	 * outval = -155 + exp((f + 15.55) * 0.057))
	 *
	 * where frequency f is in MHz. Since we don't have exp in the kernel,
	 * I approximate this function by a third order polynomial.
	 *
	 */

	FUNC0(&dev->lock);
	x = frequency / 160;
	outval = (x * x + 2500) / 5000;
	outval = (outval * x + 5000) / 10000;
	outval -= (10 * x * x + 10433) / 20866;
	outval += 4 * x - 11505;

	FUNC2((outval >> 8) & 0x01, dev->io + 4);
	FUNC2(outval >> 9, dev->io + 6);
	FUNC2(outval & 0xff, dev->io + 8);
	FUNC1(&dev->lock);

	return 0;
}