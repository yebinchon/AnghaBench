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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int us_OutputRegister; } ;

/* Variables and functions */
 unsigned int APCI3120_BIPOLAR_RANGES ; 
 int APCI3120_CLEAR_PA_PR ; 
 scalar_t__ APCI3120_SEQ_RAM_ADDRESS ; 
 int APCI3120_UNIPOLAR ; 
 scalar_t__ APCI3120_WR_ADDRESS ; 
 unsigned short FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned short) ; 

int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
	int n_chan, unsigned int *chanlist, char check)
{
	unsigned int i;		/* , differencial=0, bipolar=0; */
	unsigned int gain;
	unsigned short us_TmpValue;

	/* correct channel and range number check itself comedi/range.c */
	if (n_chan < 1) {
		if (!check)
			FUNC2(dev, "range/channel list is empty!");
		return 0;
	}
	/*  All is ok, so we can setup channel/range list */
	if (check)
		return 1;

	/* Code  to set the PA and PR...Here it set PA to 0.. */
	devpriv->us_OutputRegister =
		devpriv->us_OutputRegister & APCI3120_CLEAR_PA_PR;
	devpriv->us_OutputRegister = ((n_chan - 1) & 0xf) << 8;
	FUNC3(devpriv->us_OutputRegister, dev->iobase + APCI3120_WR_ADDRESS);

	for (i = 0; i < n_chan; i++) {
		/*  store range list to card */
		us_TmpValue = FUNC0(chanlist[i]);	/*  get channel number; */

		if (FUNC1(chanlist[i]) < APCI3120_BIPOLAR_RANGES) {
			us_TmpValue &= ((~APCI3120_UNIPOLAR) & 0xff);	/*  set bipolar */
		} else {
			us_TmpValue |= APCI3120_UNIPOLAR;	/*  enable unipolar...... */
		}

		gain = FUNC1(chanlist[i]);	/*  get gain number */
		us_TmpValue |= ((gain & 0x03) << 4);	/* <<4 for G0 and G1 bit in RAM */
		us_TmpValue |= i << 8;	/* To select the RAM LOCATION.... */
		FUNC3(us_TmpValue, dev->iobase + APCI3120_SEQ_RAM_ADDRESS);

		FUNC4("\n Gain = %i",
			(((unsigned char)FUNC1(chanlist[i]) & 0x03) << 2));
		FUNC4("\n Channel = %i", FUNC0(chanlist[i]));
		FUNC4("\n Polarity = %i", us_TmpValue & APCI3120_UNIPOLAR);
	}
	return 1;		/*  we can serve this with scan logic */
}