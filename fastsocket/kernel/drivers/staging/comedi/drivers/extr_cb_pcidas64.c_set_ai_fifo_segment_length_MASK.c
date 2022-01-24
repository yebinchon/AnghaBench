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
typedef  unsigned int uint16_t ;
struct hw_fifo_info {unsigned int max_segment_length; unsigned int fifo_size_reg_mask; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {struct hw_fifo_info* ai_fifo; } ;
struct TYPE_3__ {unsigned int fifo_size_bits; unsigned int ai_fifo_segment_length; scalar_t__ main_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ FIFO_SIZE_REG ; 
 TYPE_2__* FUNC1 (struct comedi_device*) ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				      unsigned int num_entries)
{
	static const int increment_size = 0x100;
	const struct hw_fifo_info *const fifo = FUNC1(dev)->ai_fifo;
	unsigned int num_increments;
	uint16_t bits;

	if (num_entries < increment_size)
		num_entries = increment_size;
	if (num_entries > fifo->max_segment_length)
		num_entries = fifo->max_segment_length;

	/*  1 == 256 entries, 2 == 512 entries, etc */
	num_increments = (num_entries + increment_size / 2) / increment_size;

	bits = (~(num_increments - 1)) & fifo->fifo_size_reg_mask;
	FUNC2(dev)->fifo_size_bits &= ~fifo->fifo_size_reg_mask;
	FUNC2(dev)->fifo_size_bits |= bits;
	FUNC3(FUNC2(dev)->fifo_size_bits,
	       FUNC2(dev)->main_iobase + FIFO_SIZE_REG);

	FUNC2(dev)->ai_fifo_segment_length = num_increments * increment_size;

	FUNC0("set hardware fifo segment length to %i\n",
		    FUNC2(dev)->ai_fifo_segment_length);

	return FUNC2(dev)->ai_fifo_segment_length;
}