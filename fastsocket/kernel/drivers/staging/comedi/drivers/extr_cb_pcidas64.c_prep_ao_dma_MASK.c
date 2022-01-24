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
struct comedi_device {int /*<<< orphan*/  write_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_2__ {unsigned int ao_count; scalar_t__ main_iobase; int /*<<< orphan*/ * ao_bounce_buffer; } ;

/* Variables and functions */
 scalar_t__ ADC_QUEUE_CLEAR_REG ; 
 scalar_t__ DAC_BUFFER_CLEAR_REG ; 
 scalar_t__ DAC_FIFO_REG ; 
 int DAC_FIFO_SIZE ; 
 unsigned int DMA_BUFFER_SIZE ; 
 scalar_t__ TRIG_COUNT ; 
 int bytes_in_sample ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_cmd const*) ; 
 unsigned int FUNC3 (struct comedi_device*,struct comedi_cmd const*) ; 
 TYPE_1__* FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, const struct comedi_cmd *cmd)
{
	unsigned int num_bytes;
	int i;

	/* clear queue pointer too, since external queue has
	 * weird interactions with ao fifo */
	FUNC5(0, FUNC4(dev)->main_iobase + ADC_QUEUE_CLEAR_REG);
	FUNC5(0, FUNC4(dev)->main_iobase + DAC_BUFFER_CLEAR_REG);

	num_bytes = (DAC_FIFO_SIZE / 2) * bytes_in_sample;
	if (cmd->stop_src == TRIG_COUNT &&
	    num_bytes / bytes_in_sample > FUNC4(dev)->ao_count)
		num_bytes = FUNC4(dev)->ao_count * bytes_in_sample;
	num_bytes = FUNC0(dev->write_subdev,
					       FUNC4(dev)->ao_bounce_buffer,
					       num_bytes);
	for (i = 0; i < num_bytes / bytes_in_sample; i++) {
		FUNC5(FUNC4(dev)->ao_bounce_buffer[i],
		       FUNC4(dev)->main_iobase + DAC_FIFO_REG);
	}
	FUNC4(dev)->ao_count -= num_bytes / bytes_in_sample;
	if (cmd->stop_src == TRIG_COUNT && FUNC4(dev)->ao_count == 0)
		return 0;
	num_bytes = FUNC3(dev, cmd);
	if (num_bytes == 0)
		return -1;
	if (num_bytes >= DMA_BUFFER_SIZE) ;
	FUNC2(dev, cmd);

	FUNC1(dev, 0);

	return 0;
}