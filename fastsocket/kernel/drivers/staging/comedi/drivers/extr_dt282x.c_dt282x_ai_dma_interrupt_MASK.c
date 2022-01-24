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
struct TYPE_6__ {int current_dma_index; scalar_t__ nread; int /*<<< orphan*/  supcsr; int /*<<< orphan*/  ntrig; TYPE_1__* dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  events; int /*<<< orphan*/  prealloc_buf; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  chan; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  DT2821_CLRDMADNE ; 
 int /*<<< orphan*/  DT2821_DDMA ; 
 int FUNC0 (struct comedi_subdevice*,void*,int) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev)
{
	void *ptr;
	int size;
	int i;
	int ret;
	struct comedi_subdevice *s = dev->subdevices;

	FUNC6(DT2821_CLRDMADNE);

	if (!s->async->prealloc_buf) {
		FUNC5("async->data disappeared.  dang!\n");
		return;
	}

	i = devpriv->current_dma_index;
	ptr = devpriv->dma[i].buf;
	size = devpriv->dma[i].size;

	FUNC1(devpriv->dma[i].chan);

	devpriv->current_dma_index = 1 - i;

	FUNC3(dev, ptr, size);
	ret = FUNC0(s, ptr, size);
	if (ret != size) {
		FUNC2(dev, s);
		return;
	}
	devpriv->nread -= size / 2;

	if (devpriv->nread < 0) {
		FUNC5("dt282x: off by one\n");
		devpriv->nread = 0;
	}
	if (!devpriv->nread) {
		FUNC2(dev, s);
		s->async->events |= COMEDI_CB_EOA;
		return;
	}
#if 0
	/* clear the dual dma flag, making this the last dma segment */
	/* XXX probably wrong */
	if (!devpriv->ntrig) {
		devpriv->supcsr &= ~(DT2821_DDMA);
		update_supcsr(0);
	}
#endif
	/* restart the channel */
	FUNC4(dev, i, 0);
}