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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PCI8164_AXIS_U ; 
 unsigned int PCI8164_AXIS_X ; 
 unsigned int PCI8164_AXIS_Y ; 
 unsigned int PCI8164_AXIS_Z ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,unsigned int,char*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data,
				 char *action, unsigned short offset)
{
	unsigned int axis, axis_reg;

	char *axisname;

	axis = FUNC0(insn->chanspec);

	switch (axis) {
	case 0:
		axis_reg = PCI8164_AXIS_X;
		axisname = "X";
		break;
	case 1:
		axis_reg = PCI8164_AXIS_Y;
		axisname = "Y";
		break;
	case 2:
		axis_reg = PCI8164_AXIS_Z;
		axisname = "Z";
		break;
	case 3:
		axis_reg = PCI8164_AXIS_U;
		axisname = "U";
		break;
	default:
		axis_reg = PCI8164_AXIS_X;
		axisname = "X";
	}

	FUNC1(data[0], dev->iobase + axis_reg + offset);

	FUNC2("comedi: pci8164 %s write -> %04X:%04X on axis %s\n", action,
	       data[0], data[1], axisname);

}