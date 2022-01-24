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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBS_AI ; 
 unsigned int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s,
			struct comedi_insn *insn, unsigned int *data)
{
	int i;
	unsigned int chan, gain, aref;

	chan = FUNC1(insn->chanspec);
	gain = FUNC2(insn->chanspec);
	/* XXX docs don't explain how to select aref */
	aref = FUNC0(insn->chanspec);

	for (i = 0; i < insn->n; i++) {
		data[i] = FUNC3(dev, SUBS_AI, chan, gain);
	}

	return i;
}