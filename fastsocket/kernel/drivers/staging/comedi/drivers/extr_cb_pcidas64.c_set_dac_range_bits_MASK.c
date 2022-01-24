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
typedef  int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_range_code; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
			       volatile uint16_t * bits, unsigned int channel,
			       unsigned int range)
{
	unsigned int code = FUNC0(dev)->ao_range_code[range];

	if (channel > 1)
		FUNC1(dev, "bug! bad channel?");
	if (code & ~0x3)
		FUNC1(dev, "bug! bad range code?");

	*bits &= ~(0x3 << (2 * channel));
	*bits |= code << (2 * channel);
}