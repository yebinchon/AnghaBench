#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int IntEnable; unsigned int IntStatus; int DacCmdStatus; unsigned int* ao_data; scalar_t__ io_addr; } ;
struct TYPE_3__ {int* rangecode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DAC_BSY ; 
 unsigned int DAC_READY ; 
 unsigned int DAC_ST ; 
 int ETIME ; 
 scalar_t__ ICP_MULTI_AO ; 
 scalar_t__ ICP_MULTI_DAC_CSR ; 
 scalar_t__ ICP_MULTI_INT_EN ; 
 scalar_t__ ICP_MULTI_INT_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_1__* this_board ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_insn *insn, unsigned int *data)
{
	int n, chan, range, timeout;

#ifdef ICP_MULTI_EXTDEBUG
	printk("icp multi EDBG: BGN: icp_multi_insn_write_ao(...)\n");
#endif
	/*  Disable D/A conversion ready interrupt */
	devpriv->IntEnable &= ~DAC_READY;
	FUNC6(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);

	/*  Clear interrupt status */
	devpriv->IntStatus |= DAC_READY;
	FUNC6(devpriv->IntStatus, devpriv->io_addr + ICP_MULTI_INT_STAT);

	/*  Get channel number and range */
	chan = FUNC0(insn->chanspec);
	range = FUNC1(insn->chanspec);

	/*  Set up range and channel data */
	/*  Bit 4 = 1 : Bipolar */
	/*  Bit 5 = 0 : 5V */
	/*  Bit 5 = 1 : 10V */
	/*  Bits 8-9 : Channel number */
	devpriv->DacCmdStatus &= 0xfccf;
	devpriv->DacCmdStatus |= this_board->rangecode[range];
	devpriv->DacCmdStatus |= (chan << 8);

	FUNC6(devpriv->DacCmdStatus, devpriv->io_addr + ICP_MULTI_DAC_CSR);

	for (n = 0; n < insn->n; n++) {
		/*  Wait for analogue output data register to be ready for new data, or get fed up waiting */
		timeout = 100;
		while (timeout--) {
			if (!(FUNC4(devpriv->io_addr +
				    ICP_MULTI_DAC_CSR) & DAC_BSY))
				goto dac_ready;

#ifdef ICP_MULTI_EXTDEBUG
			if (!(timeout % 10))
				printk("icp multi A n=%d tm=%d ST=%4x\n", n,
				       timeout,
				       readw(devpriv->io_addr +
					     ICP_MULTI_DAC_CSR));
#endif

			FUNC5(1);
		}

		/*  If we reach here, a timeout has occurred */
		FUNC2(dev, "D/A insn timeout");

		/*  Disable interrupt */
		devpriv->IntEnable &= ~DAC_READY;
		FUNC6(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);

		/*  Clear interrupt status */
		devpriv->IntStatus |= DAC_READY;
		FUNC6(devpriv->IntStatus,
		       devpriv->io_addr + ICP_MULTI_INT_STAT);

		/*  Clear data received */
		devpriv->ao_data[chan] = 0;

#ifdef ICP_MULTI_EXTDEBUG
		printk
		    ("icp multi EDBG: END: icp_multi_insn_write_ao(...) n=%d\n",
		     n);
#endif
		return -ETIME;

dac_ready:
		/*  Write data to analogue output data register */
		FUNC6(data[n], devpriv->io_addr + ICP_MULTI_AO);

		/*  Set DAC_ST bit to write the data to selected channel */
		devpriv->DacCmdStatus |= DAC_ST;
		FUNC6(devpriv->DacCmdStatus,
		       devpriv->io_addr + ICP_MULTI_DAC_CSR);
		devpriv->DacCmdStatus &= ~DAC_ST;

		/*  Save analogue output data */
		devpriv->ao_data[chan] = data[n];
	}

#ifdef ICP_MULTI_EXTDEBUG
	printk("icp multi EDBG: END: icp_multi_insn_write_ao(...) n=%d\n", n);
#endif
	return n;
}