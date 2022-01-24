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
struct TYPE_2__ {scalar_t__ thread; int /*<<< orphan*/  stopped; } ;
struct saa7134_dev {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_ANALOG_IO_SELECT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct saa7134_dev *dev)
{
	/* shutdown tvaudio thread */
	if (dev->thread.thread && !dev->thread.stopped)
		FUNC0(dev->thread.thread);

	FUNC1(SAA7134_ANALOG_IO_SELECT, 0x07, 0x00); /* LINE1 */
	return 0;
}