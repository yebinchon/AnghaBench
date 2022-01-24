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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int stop_arg; int chanlist_len; int /*<<< orphan*/  scan_begin_arg; } ;
struct TYPE_4__ {scalar_t__ usedma; int supcsr; int ntrig; int nread; int dacsr; scalar_t__ current_dma_index; int /*<<< orphan*/  dma_dir; } ;
struct TYPE_3__ {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 int DT2821_BUFFB ; 
 int DT2821_CLRDMADNE ; 
 int DT2821_DACINIT ; 
 int DT2821_DACLK ; 
 int DT2821_DDMA ; 
 int DT2821_DS1 ; 
 int DT2821_ERRINTEN ; 
 int DT2821_IDARDY ; 
 int DT2821_SSEL ; 
 scalar_t__ DT2821_TMRCTR ; 
 int EIO ; 
 int /*<<< orphan*/  TRIG_ROUND_NEAREST ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  dt282x_ao_inttrig ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s)
{
	int timer;
	struct comedi_cmd *cmd = &s->async->cmd;

	if (devpriv->usedma == 0) {
		FUNC0(dev,
			     "driver requires 2 dma channels to execute command");
		return -EIO;
	}

	FUNC1(dev);

	devpriv->supcsr = DT2821_ERRINTEN | DT2821_DS1 | DT2821_DDMA;
	FUNC5(DT2821_CLRDMADNE | DT2821_BUFFB | DT2821_DACINIT);

	devpriv->ntrig = cmd->stop_arg * cmd->chanlist_len;
	devpriv->nread = devpriv->ntrig;

	devpriv->dma_dir = DMA_MODE_WRITE;
	devpriv->current_dma_index = 0;

	timer = FUNC2(&cmd->scan_begin_arg, TRIG_ROUND_NEAREST);
	FUNC3(timer, dev->iobase + DT2821_TMRCTR);

	devpriv->dacsr = DT2821_SSEL | DT2821_DACLK | DT2821_IDARDY;
	FUNC4(0);

	s->async->inttrig = dt282x_ao_inttrig;

	return 0;
}