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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* pfi_output_selects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NUM_PFI_CHANNELS ; 
 TYPE_1__* FUNC1 (struct comedi_device*) ; 

__attribute__((used)) static unsigned FUNC2(struct comedi_device *dev,
					unsigned chan)
{
	FUNC0(chan >= NUM_PFI_CHANNELS);
	return FUNC1(dev)->pfi_output_selects[chan];
}