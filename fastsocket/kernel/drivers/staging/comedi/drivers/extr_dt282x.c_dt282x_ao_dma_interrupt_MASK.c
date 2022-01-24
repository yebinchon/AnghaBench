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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_6__ {int current_dma_index; int /*<<< orphan*/  dma_maxsize; TYPE_1__* dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  events; int /*<<< orphan*/  prealloc_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  chan; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  DT2821_CLRDMADNE ; 
 int FUNC0 (struct comedi_subdevice*,void*,int /*<<< orphan*/ ) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	void *ptr;
	int size;
	int i;
	struct comedi_subdevice *s = dev->subdevices + 1;

	FUNC5(DT2821_CLRDMADNE);

	if (!s->async->prealloc_buf) {
		FUNC4("async->data disappeared.  dang!\n");
		return;
	}

	i = devpriv->current_dma_index;
	ptr = devpriv->dma[i].buf;

	FUNC1(devpriv->dma[i].chan);

	devpriv->current_dma_index = 1 - i;

	size = FUNC0(s, ptr, devpriv->dma_maxsize);
	if (size == 0) {
		FUNC4("dt282x: AO underrun\n");
		FUNC2(dev, s);
		s->async->events |= COMEDI_CB_OVERFLOW;
		return;
	}
	FUNC3(dev, i, size);
	return;
}