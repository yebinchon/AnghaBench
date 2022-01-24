#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_maxsize; TYPE_2__* dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * inttrig; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT2821_STRIG ; 
 int EINVAL ; 
 int EPIPE ; 
 int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			     struct comedi_subdevice *s, unsigned int x)
{
	int size;

	if (x != 0)
		return -EINVAL;

	size = FUNC0(s, devpriv->dma[0].buf,
					  devpriv->dma_maxsize);
	if (size == 0) {
		FUNC2("dt282x: AO underrun\n");
		return -EPIPE;
	}
	FUNC1(dev, 0, size);

	size = FUNC0(s, devpriv->dma[1].buf,
					  devpriv->dma_maxsize);
	if (size == 0) {
		FUNC2("dt282x: AO underrun\n");
		return -EPIPE;
	}
	FUNC1(dev, 1, size);

	FUNC3(DT2821_STRIG);
	s->async->inttrig = NULL;

	return 1;
}