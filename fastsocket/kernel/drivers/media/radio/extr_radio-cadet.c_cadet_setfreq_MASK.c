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
struct cadet {int curtuner; int tunestat; scalar_t__ sigstrength; int /*<<< orphan*/  lock; scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cadet*) ; 
 int /*<<< orphan*/  FUNC1 (struct cadet*,unsigned int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 scalar_t__** sigtable ; 

__attribute__((used)) static void FUNC7(struct cadet *dev, unsigned freq)
{
	unsigned fifo;
	int i, j, test;
	int curvol;

	/*
	 * Formulate a fifo command
	 */
	fifo = 0;
	if (dev->curtuner == 0) {    /* FM */
		test = 102400;
		freq = (freq * 1000) / 16;       /* Make it kHz */
		freq += 10700;               /* IF is 10700 kHz */
		for (i = 0; i < 14; i++) {
			fifo = fifo << 1;
			if (freq >= test) {
				fifo |= 0x01;
				freq -= test;
			}
			test = test >> 1;
		}
	}
	if (dev->curtuner == 1) {    /* AM */
		fifo = (freq / 16) + 2010;            /* Make it kHz */
		fifo |= 0x100000;            /* Select AM Band */
	}

	/*
	 * Save current volume/mute setting
	 */

	FUNC4(&dev->lock);
	FUNC6(7, dev->io);                /* Select tuner control */
	curvol = FUNC2(dev->io + 1);
	FUNC5(&dev->lock);

	/*
	 * Tune the card
	 */
	for (j = 3; j > -1; j--) {
		FUNC1(dev, fifo | (j << 16));

		FUNC4(&dev->lock);
		FUNC6(7, dev->io);         /* Select tuner control */
		FUNC6(curvol, dev->io + 1);
		FUNC5(&dev->lock);

		FUNC3(100);

		FUNC0(dev);
		if ((dev->tunestat & 0x40) == 0) {   /* Tuned */
			dev->sigstrength = sigtable[dev->curtuner][j];
			return;
		}
	}
	dev->sigstrength = 0;
}