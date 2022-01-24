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
struct comedi_device {TYPE_3__* write_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_6__ {int /*<<< orphan*/  async; } ;
struct TYPE_5__ {unsigned int ao_dma_index; unsigned int ao_count; TYPE_1__* ao_dma_desc; int /*<<< orphan*/ * ao_buffer; int /*<<< orphan*/ * ao_buffer_bus_addr; } ;
struct TYPE_4__ {void* next; void* transfer_size; } ;

/* Variables and functions */
 unsigned int AO_DMA_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 unsigned int DMA_BUFFER_SIZE ; 
 unsigned int PLX_END_OF_CHAIN_BIT ; 
 scalar_t__ TRIG_COUNT ; 
 unsigned int bytes_in_sample ; 
 unsigned int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (void*) ; 
 unsigned int FUNC5 (struct comedi_device*) ; 
 TYPE_2__* FUNC6 (struct comedi_device*) ; 

__attribute__((used)) static unsigned int FUNC7(struct comedi_device *dev,
				       const struct comedi_cmd *cmd)
{
	unsigned int num_bytes, buffer_index, prev_buffer_index;
	unsigned int next_bits;

	buffer_index = FUNC6(dev)->ao_dma_index;
	prev_buffer_index = FUNC5(dev);

	FUNC0("attempting to load ao buffer %i (0x%x)\n", buffer_index,
		    FUNC6(dev)->ao_buffer_bus_addr[buffer_index]);

	num_bytes = FUNC2(dev->write_subdev->async);
	if (num_bytes > DMA_BUFFER_SIZE)
		num_bytes = DMA_BUFFER_SIZE;
	if (cmd->stop_src == TRIG_COUNT && num_bytes > FUNC6(dev)->ao_count)
		num_bytes = FUNC6(dev)->ao_count;
	num_bytes -= num_bytes % bytes_in_sample;

	if (num_bytes == 0)
		return 0;

	FUNC0("loading %i bytes\n", num_bytes);

	num_bytes = FUNC1(dev->write_subdev,
					       FUNC6(dev)->
					       ao_buffer[buffer_index],
					       num_bytes);
	FUNC6(dev)->ao_dma_desc[buffer_index].transfer_size =
	    FUNC3(num_bytes);
	/* set end of chain bit so we catch underruns */
	next_bits = FUNC4(FUNC6(dev)->ao_dma_desc[buffer_index].next);
	next_bits |= PLX_END_OF_CHAIN_BIT;
	FUNC6(dev)->ao_dma_desc[buffer_index].next = FUNC3(next_bits);
	/* clear end of chain bit on previous buffer now that we have set it
	 * for the last buffer */
	next_bits = FUNC4(FUNC6(dev)->ao_dma_desc[prev_buffer_index].next);
	next_bits &= ~PLX_END_OF_CHAIN_BIT;
	FUNC6(dev)->ao_dma_desc[prev_buffer_index].next = FUNC3(next_bits);

	FUNC6(dev)->ao_dma_index = (buffer_index + 1) % AO_DMA_RING_COUNT;
	FUNC6(dev)->ao_count -= num_bytes;

	return num_bytes;
}