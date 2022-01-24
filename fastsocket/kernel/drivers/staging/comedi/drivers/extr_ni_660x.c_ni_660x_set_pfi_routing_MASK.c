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
typedef  unsigned int uint64_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* pfi_output_selects; unsigned int pfi_direction_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 unsigned int NUM_PFI_CHANNELS ; 
 unsigned int max_dio_pfi_chan ; 
 unsigned int min_counter_pfi_chan ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int,unsigned int) ; 
 unsigned int num_pfi_output_selects ; 
 unsigned int pfi_output_select_counter ; 
 unsigned int pfi_output_select_do ; 
 unsigned int pfi_output_select_high_Z ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, unsigned chan,
				   unsigned source)
{
	if (source > num_pfi_output_selects)
		return -EINVAL;
	if (source == pfi_output_select_high_Z)
		return -EINVAL;
	if (chan < min_counter_pfi_chan) {
		if (source == pfi_output_select_counter)
			return -EINVAL;
	} else if (chan > max_dio_pfi_chan) {
		if (source == pfi_output_select_do)
			return -EINVAL;
	}
	FUNC0(chan >= NUM_PFI_CHANNELS);

	FUNC2(dev)->pfi_output_selects[chan] = source;
	if (FUNC2(dev)->pfi_direction_bits & (((uint64_t) 1) << chan))
		FUNC1(dev, chan,
					  FUNC2(dev)->
					  pfi_output_selects[chan]);
	return 0;
}