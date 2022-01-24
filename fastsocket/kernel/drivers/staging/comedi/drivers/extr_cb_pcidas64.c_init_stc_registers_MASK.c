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
typedef  int uint16_t ;
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_6__ {scalar_t__ layout; TYPE_1__* ai_fifo; } ;
struct TYPE_5__ {int adc_control1_bits; int hw_config_bits; int intr_enable_bits; scalar_t__ main_iobase; int /*<<< orphan*/  dac_control1_bits; int /*<<< orphan*/  fifo_size_bits; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_segment_length; } ;

/* Variables and functions */
 scalar_t__ ADC_CONTROL1_REG ; 
 int ADC_QUEUE_CONFIG_BIT ; 
 scalar_t__ ADC_SAMPLE_INTERVAL_UPPER_REG ; 
 scalar_t__ CALIBRATION_REG ; 
 int /*<<< orphan*/  DAC_FIFO_BITS ; 
 int /*<<< orphan*/  DAC_OUTPUT_ENABLE_BIT ; 
 scalar_t__ DAQ_SYNC_REG ; 
 int DMA_CH_SELECT_BIT ; 
 int EN_DAC_DONE_INTR_BIT ; 
 int EN_DAC_UNDERRUN_BIT ; 
 scalar_t__ HW_CONFIG_REG ; 
 int INTERNAL_CLOCK_4020_BITS ; 
 scalar_t__ INTR_ENABLE_REG ; 
 scalar_t__ LAYOUT_4020 ; 
 int SLOW_DAC_BIT ; 
 TYPE_3__* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 TYPE_2__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev)
{
	uint16_t bits;
	unsigned long flags;

	FUNC4(&dev->spinlock, flags);

	/*  bit should be set for 6025, although docs say boards with <= 16 chans should be cleared XXX */
	if (1)
		FUNC2(dev)->adc_control1_bits |= ADC_QUEUE_CONFIG_BIT;
	FUNC6(FUNC2(dev)->adc_control1_bits,
	       FUNC2(dev)->main_iobase + ADC_CONTROL1_REG);

	/*  6402/16 manual says this register must be initialized to 0xff? */
	FUNC6(0xff, FUNC2(dev)->main_iobase + ADC_SAMPLE_INTERVAL_UPPER_REG);

	bits = SLOW_DAC_BIT | DMA_CH_SELECT_BIT;
	if (FUNC0(dev)->layout == LAYOUT_4020)
		bits |= INTERNAL_CLOCK_4020_BITS;
	FUNC2(dev)->hw_config_bits |= bits;
	FUNC6(FUNC2(dev)->hw_config_bits,
	       FUNC2(dev)->main_iobase + HW_CONFIG_REG);

	FUNC6(0, FUNC2(dev)->main_iobase + DAQ_SYNC_REG);
	FUNC6(0, FUNC2(dev)->main_iobase + CALIBRATION_REG);

	FUNC5(&dev->spinlock, flags);

	/*  set fifos to maximum size */
	FUNC2(dev)->fifo_size_bits |= DAC_FIFO_BITS;
	FUNC3(dev,
				   FUNC0(dev)->ai_fifo->max_segment_length);

	FUNC2(dev)->dac_control1_bits = DAC_OUTPUT_ENABLE_BIT;
	FUNC2(dev)->intr_enable_bits =	/* EN_DAC_INTR_SRC_BIT | DAC_INTR_QEMPTY_BITS | */
	    EN_DAC_DONE_INTR_BIT | EN_DAC_UNDERRUN_BIT;
	FUNC6(FUNC2(dev)->intr_enable_bits,
	       FUNC2(dev)->main_iobase + INTR_ENABLE_REG);

	FUNC1(dev);
}