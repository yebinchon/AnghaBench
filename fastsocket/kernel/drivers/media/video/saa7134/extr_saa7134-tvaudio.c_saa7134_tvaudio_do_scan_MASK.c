#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ thread; int /*<<< orphan*/  stopped; int /*<<< orphan*/  scan2; int /*<<< orphan*/  mode; } ;
struct saa7134_dev {scalar_t__ automute; TYPE_2__ thread; int /*<<< orphan*/  insuspend; TYPE_1__* input; } ;
struct TYPE_3__ {scalar_t__ amux; } ;

/* Variables and functions */
 scalar_t__ TV ; 
 int /*<<< orphan*/  UNSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3(struct saa7134_dev *dev)
{
	if (dev->input->amux != TV) {
		FUNC0("sound IF not in use, skipping scan\n");
		dev->automute = 0;
		FUNC1(dev);
	} else if (dev->thread.thread) {
		dev->thread.mode = UNSET;
		dev->thread.scan2++;

		if (!dev->insuspend && !dev->thread.stopped)
			FUNC2(dev->thread.thread);
	} else {
		dev->automute = 0;
		FUNC1(dev);
	}
	return 0;
}