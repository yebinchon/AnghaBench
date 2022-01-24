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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AREF_GROUND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EIO ; 
 unsigned int FS_ADC_HEMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 unsigned int FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev)
{
	unsigned int chanspec = FUNC0(0, 0, AREF_GROUND);
	unsigned i;
	static const unsigned limit = 0x2000;
	unsigned fifo_size = 0;

	FUNC1(dev);
	FUNC6(dev, 1, &chanspec);
	FUNC2(dev, 0);	/* software */
	/* convert  samples */
	for (i = 0; i < limit; ++i) {
		unsigned fifo_status;
		/* trigger conversion */
		FUNC3(dev);
		FUNC7(1);
		fifo_status = FUNC4(dev);
		if ((fifo_status & FS_ADC_HEMPTY) == 0) {
			fifo_size = 2 * i;
			break;
		}
	}
	if (i == limit) {
		FUNC5("\ncomedi: %s: failed to probe fifo size.\n", DRV_NAME);
		return -EIO;
	}
	FUNC1(dev);
	if (fifo_size != 0x400 && fifo_size != 0x2000) {
		FUNC5
		    ("\ncomedi: %s: unexpected fifo size of %i, expected 1024 or 8192.\n",
		     DRV_NAME, fifo_size);
		return -EIO;
	}
	return fifo_size;
}