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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS1800_QRAM ; 
 scalar_t__ DAS1800_QRAM_ADDRESS ; 
 scalar_t__ DAS1800_SELECT ; 
 int QRAM ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev, struct comedi_cmd cmd)
{
	int i, n, chan_range;
	unsigned long irq_flags;
	const int range_mask = 0x3;	/* masks unipolar/bipolar bit off range */
	const int range_bitshift = 8;

	n = cmd.chanlist_len;
	/*  spinlock protects indirect addressing */
	FUNC4(&dev->spinlock, irq_flags);
	FUNC2(QRAM, dev->iobase + DAS1800_SELECT);	/* select QRAM for baseAddress + 0x0 */
	FUNC2(n - 1, dev->iobase + DAS1800_QRAM_ADDRESS);	/*set QRAM address start */
	/* make channel / gain list */
	for (i = 0; i < n; i++) {
		chan_range =
		    FUNC0(cmd.
			    chanlist[i]) | ((FUNC1(cmd.chanlist[i]) &
					     range_mask) << range_bitshift);
		FUNC3(chan_range, dev->iobase + DAS1800_QRAM);
	}
	FUNC2(n - 1, dev->iobase + DAS1800_QRAM_ADDRESS);	/*finish write to QRAM */
	FUNC5(&dev->spinlock, irq_flags);

	return;
}