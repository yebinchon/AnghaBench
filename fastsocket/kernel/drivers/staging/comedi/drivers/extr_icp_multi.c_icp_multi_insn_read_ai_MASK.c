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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; int /*<<< orphan*/  IntStatus; int /*<<< orphan*/  IntEnable; int /*<<< orphan*/  AdcCmdStatus; } ;

/* Variables and functions */
 int ADC_BSY ; 
 int /*<<< orphan*/  ADC_READY ; 
 int /*<<< orphan*/  ADC_ST ; 
 int ETIME ; 
 scalar_t__ ICP_MULTI_ADC_CSR ; 
 scalar_t__ ICP_MULTI_AI ; 
 scalar_t__ ICP_MULTI_INT_EN ; 
 scalar_t__ ICP_MULTI_INT_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn, unsigned int *data)
{
	int n, timeout;

#ifdef ICP_MULTI_EXTDEBUG
	printk("icp multi EDBG: BGN: icp_multi_insn_read_ai(...)\n");
#endif
	/*  Disable A/D conversion ready interrupt */
	devpriv->IntEnable &= ~ADC_READY;
	FUNC5(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);

	/*  Clear interrupt status */
	devpriv->IntStatus |= ADC_READY;
	FUNC5(devpriv->IntStatus, devpriv->io_addr + ICP_MULTI_INT_STAT);

	/*  Set up appropriate channel, mode and range data, for specified channel */
	FUNC3(dev, s, &insn->chanspec, 1);

#ifdef ICP_MULTI_EXTDEBUG
	printk("icp_multi A ST=%4x IO=%p\n",
	       readw(devpriv->io_addr + ICP_MULTI_ADC_CSR),
	       devpriv->io_addr + ICP_MULTI_ADC_CSR);
#endif

	for (n = 0; n < insn->n; n++) {
		/*  Set start ADC bit */
		devpriv->AdcCmdStatus |= ADC_ST;
		FUNC5(devpriv->AdcCmdStatus,
		       devpriv->io_addr + ICP_MULTI_ADC_CSR);
		devpriv->AdcCmdStatus &= ~ADC_ST;

#ifdef ICP_MULTI_EXTDEBUG
		printk("icp multi B n=%d ST=%4x\n", n,
		       readw(devpriv->io_addr + ICP_MULTI_ADC_CSR));
#endif

		FUNC4(1);

#ifdef ICP_MULTI_EXTDEBUG
		printk("icp multi C n=%d ST=%4x\n", n,
		       readw(devpriv->io_addr + ICP_MULTI_ADC_CSR));
#endif

		/*  Wait for conversion to complete, or get fed up waiting */
		timeout = 100;
		while (timeout--) {
			if (!(FUNC2(devpriv->io_addr +
				    ICP_MULTI_ADC_CSR) & ADC_BSY))
				goto conv_finish;

#ifdef ICP_MULTI_EXTDEBUG
			if (!(timeout % 10))
				printk("icp multi D n=%d tm=%d ST=%4x\n", n,
				       timeout,
				       readw(devpriv->io_addr +
					     ICP_MULTI_ADC_CSR));
#endif

			FUNC4(1);
		}

		/*  If we reach here, a timeout has occurred */
		FUNC0(dev, "A/D insn timeout");

		/*  Disable interrupt */
		devpriv->IntEnable &= ~ADC_READY;
		FUNC5(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);

		/*  Clear interrupt status */
		devpriv->IntStatus |= ADC_READY;
		FUNC5(devpriv->IntStatus,
		       devpriv->io_addr + ICP_MULTI_INT_STAT);

		/*  Clear data received */
		data[n] = 0;

#ifdef ICP_MULTI_EXTDEBUG
		printk
		    ("icp multi EDBG: END: icp_multi_insn_read_ai(...) n=%d\n",
		     n);
#endif
		return -ETIME;

conv_finish:
		data[n] =
		    (FUNC2(devpriv->io_addr + ICP_MULTI_AI) >> 4) & 0x0fff;
	}

	/*  Disable interrupt */
	devpriv->IntEnable &= ~ADC_READY;
	FUNC5(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);

	/*  Clear interrupt status */
	devpriv->IntStatus |= ADC_READY;
	FUNC5(devpriv->IntStatus, devpriv->io_addr + ICP_MULTI_INT_STAT);

#ifdef ICP_MULTI_EXTDEBUG
	printk("icp multi EDBG: END: icp_multi_insn_read_ai(...) n=%d\n", n);
#endif
	return n;
}