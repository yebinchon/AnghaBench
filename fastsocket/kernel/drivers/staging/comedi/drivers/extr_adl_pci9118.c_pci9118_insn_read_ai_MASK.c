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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int AdControlReg; int AdFunctionReg; scalar_t__ ai16bits; } ;

/* Variables and functions */
 int AdControl_Int ; 
 int AdFunction_PDTrg ; 
 int AdFunction_PETrg ; 
 int AdStatus_ADrdy ; 
 int EINVAL ; 
 int ETIME ; 
 scalar_t__ PCI9118_ADFUNC ; 
 scalar_t__ PCI9118_ADSTAT ; 
 scalar_t__ PCI9118_AD_DATA ; 
 scalar_t__ PCI9118_DELFIFO ; 
 scalar_t__ PCI9118_SOFTTRG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{

	int n, timeout;

	devpriv->AdControlReg = AdControl_Int & 0xff;
	devpriv->AdFunctionReg = AdFunction_PDTrg | AdFunction_PETrg;
	FUNC3(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);	/*  positive triggers, no S&H, no burst, burst stop, no post trigger, no about trigger, trigger stop */

	if (!FUNC5(dev, s, 1, &insn->chanspec, 0, 0, 0, 0, 0))
		return -EINVAL;

	FUNC3(0, dev->iobase + PCI9118_DELFIFO);	/*  flush FIFO */

	for (n = 0; n < insn->n; n++) {
		FUNC4(0, dev->iobase + PCI9118_SOFTTRG);	/* start conversion */
		FUNC6(2);
		timeout = 100;
		while (timeout--) {
			if (FUNC1(dev->iobase + PCI9118_ADSTAT) & AdStatus_ADrdy)
				goto conv_finish;
			FUNC6(1);
		}

		FUNC0(dev, "A/D insn timeout");
		data[n] = 0;
		FUNC3(0, dev->iobase + PCI9118_DELFIFO);	/*  flush FIFO */
		return -ETIME;

conv_finish:
		if (devpriv->ai16bits) {
			data[n] =
			    (FUNC1(dev->iobase +
				 PCI9118_AD_DATA) & 0xffff) ^ 0x8000;
		} else {
			data[n] =
			    (FUNC2(dev->iobase + PCI9118_AD_DATA) >> 4) & 0xfff;
		}
	}

	FUNC3(0, dev->iobase + PCI9118_DELFIFO);	/*  flush FIFO */
	return n;

}