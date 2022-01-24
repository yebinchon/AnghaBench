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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int /*<<< orphan*/  tsk_Current; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

int FUNC1(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	devpriv->tsk_Current = current;
	FUNC0(0x200 | 0, devpriv->iobase + 128 + 0x4);
	FUNC0(0, devpriv->iobase + 128 + 0);
/********************************/
/* Initialise the warning value */
/********************************/
	FUNC0(0x300 | 0, devpriv->iobase + 128 + 0x4);
	FUNC0((data[0] << 8), devpriv->iobase + 128 + 0);
	FUNC0(0x200000UL, devpriv->iobase + 128 + 12);

	return insn->n;
}