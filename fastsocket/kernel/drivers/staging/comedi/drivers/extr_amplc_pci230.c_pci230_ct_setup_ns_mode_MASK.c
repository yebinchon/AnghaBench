#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ PCI230_Z2_CT_BASE ; 
 scalar_t__ PCI230_ZCLK_SCE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, unsigned int ct,
				    unsigned int mode, uint64_t ns,
				    unsigned int round)
{
	unsigned int clk_src;
	unsigned int count;

	/* Set mode. */
	FUNC1(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, ct, mode);
	/* Determine clock source and count. */
	clk_src = FUNC4(ns, &count, round);
	/* Program clock source. */
	FUNC3(FUNC0(ct, clk_src), devpriv->iobase1 + PCI230_ZCLK_SCE);
	/* Set initial count. */
	if (count >= 65536) {
		count = 0;
	}
	FUNC2(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, ct, count);
}