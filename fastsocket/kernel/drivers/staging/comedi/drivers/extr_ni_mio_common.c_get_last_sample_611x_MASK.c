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
typedef  int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {scalar_t__ reg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_FIFO_Data_611x ; 
 int NI_AI_SUBDEV ; 
 int /*<<< orphan*/  XXX_Status ; 
 TYPE_1__ boardtype ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,short) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ni_reg_611x ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
	short data;
	u32 dl;

	if (boardtype.reg_type != ni_reg_611x)
		return;

	/* Check if there's a single sample stuck in the FIFO */
	if (FUNC1(XXX_Status) & 0x80) {
		dl = FUNC2(ADC_FIFO_Data_611x);
		data = (dl & 0xffff);
		FUNC0(s, data);
	}
}