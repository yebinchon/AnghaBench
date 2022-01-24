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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DT_C_READ_ADIM ; 
 int FUNC2 (struct comedi_device*,int) ; 
 int FUNC3 (struct comedi_device*,int*) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int d;
	int stat;
	int i;

	for (i = 0; i < insn->n; i++) {
		stat = FUNC4(dev, DT_C_READ_ADIM);
		FUNC5(dev, FUNC1(insn->chanspec));
		FUNC5(dev, FUNC0(insn->chanspec));
		stat = FUNC3(dev, &d);

		if (stat != 0)
			return FUNC2(dev, stat);

		data[i] = d;
	}

	return i;
}