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
typedef  int uint8_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {scalar_t__ ai_count; scalar_t__ ai_cmd_running; scalar_t__ plx9080_iobase; } ;

/* Variables and functions */
 unsigned short ADC_DONE_BIT ; 
 unsigned short ADC_INTR_PENDING_BIT ; 
 unsigned short ADC_OVERRUN_BIT ; 
 unsigned short ADC_STOP_BIT ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int ICS_DMA1_A ; 
 scalar_t__ LAYOUT_4020 ; 
 int PLX_CLEAR_DMA_INTR_BIT ; 
 scalar_t__ PLX_DMA1_CS_REG ; 
 int PLX_DMA_EN_BIT ; 
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_EXT ; 
 int TRIG_WAKE_EOS ; 
 TYPE_2__* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 TYPE_1__* FUNC6 (struct comedi_device*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

void FUNC11(struct comedi_device *dev, unsigned short status,
			 unsigned int plx_status)
{
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	uint8_t dma1_status;
	unsigned long flags;

	/*  check for fifo overrun */
	if (status & ADC_OVERRUN_BIT) {
		FUNC3(dev, "fifo overrun");
		async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
	}
	/*  spin lock makes sure noone else changes plx dma control reg */
	FUNC8(&dev->spinlock, flags);
	dma1_status = FUNC7(FUNC6(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
	if (plx_status & ICS_DMA1_A) {	/*  dma chan 1 interrupt */
		FUNC10((dma1_status & PLX_DMA_EN_BIT) | PLX_CLEAR_DMA_INTR_BIT,
		       FUNC6(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
		FUNC0("dma1 status 0x%x\n", dma1_status);

		if (dma1_status & PLX_DMA_EN_BIT) {
			FUNC4(dev, 1);
		}
		FUNC0(" cleared dma ch1 interrupt\n");
	}
	FUNC9(&dev->spinlock, flags);

	if (status & ADC_DONE_BIT)
		FUNC0("adc done interrupt\n");

	/*  drain fifo with pio */
	if ((status & ADC_DONE_BIT) ||
	    ((cmd->flags & TRIG_WAKE_EOS) &&
	     (status & ADC_INTR_PENDING_BIT) &&
	     (FUNC1(dev)->layout != LAYOUT_4020))) {
		FUNC0("pio fifo drain\n");
		FUNC8(&dev->spinlock, flags);
		if (FUNC6(dev)->ai_cmd_running) {
			FUNC9(&dev->spinlock, flags);
			FUNC5(dev);
		} else
			FUNC9(&dev->spinlock, flags);
	}
	/*  if we are have all the data, then quit */
	if ((cmd->stop_src == TRIG_COUNT && FUNC6(dev)->ai_count <= 0) ||
	    (cmd->stop_src == TRIG_EXT && (status & ADC_STOP_BIT))) {
		async->events |= COMEDI_CB_EOA;
	}

	FUNC2(dev, s);
}