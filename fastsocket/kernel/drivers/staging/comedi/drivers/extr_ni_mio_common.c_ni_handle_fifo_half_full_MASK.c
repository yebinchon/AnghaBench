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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int ai_fifo_depth; } ;

/* Variables and functions */
 int NI_AI_SUBDEV ; 
 TYPE_1__ boardtype ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*,int) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	int n;
	struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;

	n = boardtype.ai_fifo_depth / 2;

	FUNC0(dev, s, n);
}