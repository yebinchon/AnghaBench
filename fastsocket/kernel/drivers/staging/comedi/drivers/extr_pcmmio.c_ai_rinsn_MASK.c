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
struct TYPE_2__ {unsigned long iobase; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int AREF_GROUND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,unsigned long) ; 
 TYPE_1__* subpriv ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s,
		    struct comedi_insn *insn, unsigned int *data)
{
	int n;
	unsigned long iobase = subpriv->iobase;

	/*
	   1. write the CMD byte (to BASE+2)
	   2. read junk lo byte (BASE+0)
	   3. read junk hi byte (BASE+1)
	   4. (mux settled so) write CMD byte again (BASE+2)
	   5. read valid lo byte(BASE+0)
	   6. read valid hi byte(BASE+1)

	   Additionally note that the BASE += 4 if the channel >= 8
	 */

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {
		unsigned chan = FUNC1(insn->chanspec), range =
		    FUNC2(insn->chanspec), aref = FUNC0(insn->chanspec);
		unsigned char command_byte = 0;
		unsigned iooffset = 0;
		short sample, adc_adjust = 0;

		if (chan > 7)
			chan -= 8, iooffset = 4;	/* use the second dword for channels > 7 */

		if (aref != AREF_DIFF) {
			aref = AREF_GROUND;
			command_byte |= 1 << 7;	/* set bit 7 to indicate single-ended */
		}
		if (range < 2)
			adc_adjust = 0x8000;	/* bipolar ranges (-5,5 .. -10,10 need to be adjusted -- that is.. they need to wrap around by adding 0x8000 */

		if (chan % 2) {
			command_byte |= 1 << 6;	/* odd-numbered channels have bit 6 set */
		}

		/* select the channel, bits 4-5 == chan/2 */
		command_byte |= ((chan / 2) & 0x3) << 4;

		/* set the range, bits 2-3 */
		command_byte |= (range & 0x3) << 2;

		/* need to do this twice to make sure mux settled */
		FUNC5(command_byte, iobase + iooffset + 2);	/* chan/range/aref select */

		FUNC3(iobase + iooffset);	/* wait for the adc to say it finised the conversion */

		FUNC5(command_byte, iobase + iooffset + 2);	/* select the chan/range/aref AGAIN */

		FUNC3(iobase + iooffset);

		sample = FUNC4(iobase + iooffset + 0);	/* read data lo byte */
		sample |= FUNC4(iobase + iooffset + 1) << 8;	/* read data hi byte */
		sample += adc_adjust;	/* adjustment .. munge data */
		data[n] = sample;
	}
	/* return the number of samples read/written */
	return n;
}