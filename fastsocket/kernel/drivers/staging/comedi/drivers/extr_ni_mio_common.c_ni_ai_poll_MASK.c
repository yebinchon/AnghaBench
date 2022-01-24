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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int buf_write_count; int buf_read_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	unsigned long flags = 0;
	int count;

	/*  lock to avoid race with interrupt handler */
	if (FUNC0() == 0)
		FUNC3(&dev->spinlock, flags);
#ifndef PCIDMA
	FUNC1(dev);
#else
	ni_sync_ai_dma(dev);
#endif
	count = s->async->buf_write_count - s->async->buf_read_count;
	if (FUNC0() == 0)
		FUNC4(&dev->spinlock, flags);

	return count;
}