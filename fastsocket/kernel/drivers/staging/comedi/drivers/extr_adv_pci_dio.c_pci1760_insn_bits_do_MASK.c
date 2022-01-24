#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int CMD_SetRelaysOutput ; 
 int FUNC0 (struct comedi_device*,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	int ret;
	unsigned char omb[4] = {
		0x00,
		0x00,
		CMD_SetRelaysOutput,
		0x00
	};
	unsigned char imb[4];

	if (data[0]) {
		s->state &= ~data[0];
		s->state |= (data[0] & data[1]);
		omb[0] = s->state;
		ret = FUNC0(dev, omb, imb);
		if (!ret)
			return ret;
	}
	data[1] = s->state;

	return 2;
}