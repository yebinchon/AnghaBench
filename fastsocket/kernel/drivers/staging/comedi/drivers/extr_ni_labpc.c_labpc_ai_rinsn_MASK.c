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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  spinlock; } ;
struct TYPE_4__ {int command2_bits; int command3_bits; int command1_bits; int command6_bits; int command4_bits; int (* read_byte ) (scalar_t__) ;int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;} ;
struct TYPE_3__ {int* ai_range_code; scalar_t__ register_layout; scalar_t__* ai_range_is_unipolar; } ;

/* Variables and functions */
 int A1_INTR_EN_BIT ; 
 int FUNC0 (int) ; 
 int ADC_COMMON_BIT ; 
 scalar_t__ ADC_CONVERT_REG ; 
 int ADC_DIFF_BIT ; 
 int ADC_FHF_INTR_EN_BIT ; 
 scalar_t__ ADC_FIFO_REG ; 
 int ADC_UNIP_BIT ; 
 scalar_t__ AREF_DIFF ; 
 scalar_t__ AREF_GROUND ; 
 scalar_t__ COMMAND1_REG ; 
 scalar_t__ COMMAND2_REG ; 
 scalar_t__ COMMAND3_REG ; 
 scalar_t__ COMMAND4_REG ; 
 scalar_t__ COMMAND6_REG ; 
 scalar_t__ COUNTER_A_CONTROL_REG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DATA_AVAIL_BIT ; 
 int ETIME ; 
 int EXT_CONVERT_DISABLE_BIT ; 
 int HWTRIG_BIT ; 
 int INIT_A0_BITS ; 
 int PRETRIG_BIT ; 
 scalar_t__ STATUS1_REG ; 
 int SWTRIG_BIT ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 scalar_t__ labpc_1200_layout ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 
 int FUNC17 (scalar_t__) ; 
 TYPE_1__* thisboard ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	int i, n;
	int chan, range;
	int lsb, msb;
	int timeout = 1000;
	unsigned long flags;

	/*  disable timed conversions */
	FUNC6(&dev->spinlock, flags);
	devpriv->command2_bits &= ~SWTRIG_BIT & ~HWTRIG_BIT & ~PRETRIG_BIT;
	devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
	FUNC7(&dev->spinlock, flags);

	/*  disable interrupt generation and dma */
	devpriv->command3_bits = 0;
	devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);

	/* set gain and channel */
	devpriv->command1_bits = 0;
	chan = FUNC2(insn->chanspec);
	range = FUNC3(insn->chanspec);
	devpriv->command1_bits |= thisboard->ai_range_code[range];
	/*  munge channel bits for differential/scan disabled mode */
	if (FUNC1(insn->chanspec) == AREF_DIFF)
		chan *= 2;
	devpriv->command1_bits |= FUNC0(chan);
	devpriv->write_byte(devpriv->command1_bits, dev->iobase + COMMAND1_REG);

	/*  setup command6 register for 1200 boards */
	if (thisboard->register_layout == labpc_1200_layout) {
		/*  reference inputs to ground or common? */
		if (FUNC1(insn->chanspec) != AREF_GROUND)
			devpriv->command6_bits |= ADC_COMMON_BIT;
		else
			devpriv->command6_bits &= ~ADC_COMMON_BIT;
		/*  bipolar or unipolar range? */
		if (thisboard->ai_range_is_unipolar[range])
			devpriv->command6_bits |= ADC_UNIP_BIT;
		else
			devpriv->command6_bits &= ~ADC_UNIP_BIT;
		/*  don't interrupt on fifo half full */
		devpriv->command6_bits &= ~ADC_FHF_INTR_EN_BIT;
		/*  don't enable interrupt on counter a1 terminal count? */
		devpriv->command6_bits &= ~A1_INTR_EN_BIT;
		/*  write to register */
		devpriv->write_byte(devpriv->command6_bits,
				    dev->iobase + COMMAND6_REG);
	}
	/*  setup command4 register */
	devpriv->command4_bits = 0;
	devpriv->command4_bits |= EXT_CONVERT_DISABLE_BIT;
	/*  single-ended/differential */
	if (FUNC1(insn->chanspec) == AREF_DIFF)
		devpriv->command4_bits |= ADC_DIFF_BIT;
	devpriv->write_byte(devpriv->command4_bits, dev->iobase + COMMAND4_REG);

	/*  initialize pacer counter output to make sure it doesn't cause any problems */
	devpriv->write_byte(INIT_A0_BITS, dev->iobase + COUNTER_A_CONTROL_REG);

	FUNC5(dev);

	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		devpriv->write_byte(0x1, dev->iobase + ADC_CONVERT_REG);

		for (i = 0; i < timeout; i++) {
			if (devpriv->read_byte(dev->iobase +
					       STATUS1_REG) & DATA_AVAIL_BIT)
				break;
			FUNC18(1);
		}
		if (i == timeout) {
			FUNC4(dev, "timeout");
			return -ETIME;
		}
		lsb = devpriv->read_byte(dev->iobase + ADC_FIFO_REG);
		msb = devpriv->read_byte(dev->iobase + ADC_FIFO_REG);
		data[n] = (msb << 8) | lsb;
	}

	return n;
}