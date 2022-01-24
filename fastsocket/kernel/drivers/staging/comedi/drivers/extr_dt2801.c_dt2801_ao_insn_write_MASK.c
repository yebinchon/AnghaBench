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
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DT_C_WRITE_DAIM ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	FUNC1(dev, DT_C_WRITE_DAIM);
	FUNC2(dev, FUNC0(insn->chanspec));
	FUNC3(dev, data[0]);

	devpriv->ao_readback[FUNC0(insn->chanspec)] = data[0];

	return 1;
}