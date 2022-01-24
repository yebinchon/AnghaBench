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
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_C_SET_DIGIN ; 
 int /*<<< orphan*/  DT_C_SET_DIGOUT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn, unsigned int *data)
{
	int which = 0;

	if (s == dev->subdevices + 4)
		which = 1;

	/* configure */
	if (data[0]) {
		s->io_bits = 0xff;
		FUNC0(dev, DT_C_SET_DIGOUT);
	} else {
		s->io_bits = 0;
		FUNC0(dev, DT_C_SET_DIGIN);
	}
	FUNC1(dev, which);

	return 1;
}