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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct TYPE_2__ {int buf_write_count; int buf_read_count; } ;

/* Variables and functions */
 scalar_t__ DAS16M1_CS ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	unsigned long flags;
	unsigned int status;

	/*  prevent race with interrupt handler */
	FUNC2(&dev->spinlock, flags);
	status = FUNC1(dev->iobase + DAS16M1_CS);
	FUNC0(dev, status);
	FUNC3(&dev->spinlock, flags);

	return s->async->buf_write_count - s->async->buf_read_count;
}