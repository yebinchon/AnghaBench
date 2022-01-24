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
typedef  unsigned int uint16_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {scalar_t__ main_iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAC_SELECT_REG ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			       const struct comedi_cmd *cmd)
{
	uint16_t bits;
	unsigned int first_channel, last_channel;

	first_channel = FUNC0(cmd->chanlist[0]);
	last_channel = FUNC0(cmd->chanlist[cmd->chanlist_len - 1]);
	if (last_channel < first_channel)
		FUNC1(dev, "bug! last ao channel < first ao channel");

	bits = (first_channel & 0x7) | (last_channel & 0x7) << 3;

	FUNC3(bits, FUNC2(dev)->main_iobase + DAC_SELECT_REG);
}