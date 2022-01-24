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
struct TYPE_2__ {int /*<<< orphan*/  i_IobaseAddon; scalar_t__ b_OutputMemoryStatus; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ui_Temp = 0, ui_Temp1 = 0;
	unsigned int ui_NoOfChannel = FUNC0(insn->chanspec);	/*  get the channel */
	if (devpriv->b_OutputMemoryStatus) {
		ui_Temp = FUNC2(devpriv->i_IobaseAddon);

	}			/* if(devpriv->b_OutputMemoryStatus ) */
	else {
		ui_Temp = 0;
	}			/* if(devpriv->b_OutputMemoryStatus ) */
	if (data[3] == 0) {
		if (data[1] == 0) {
			data[0] = (data[0] << ui_NoOfChannel) | ui_Temp;
			FUNC3(data[0], devpriv->i_IobaseAddon);
		}		/* if(data[1]==0) */
		else {
			if (data[1] == 1) {
				switch (ui_NoOfChannel) {

				case 2:
					data[0] =
						(data[0] << (2 *
							data[2])) | ui_Temp;
					break;
				case 3:
					data[0] = (data[0] | ui_Temp);
					break;
				}	/* switch(ui_NoOfChannels) */

				FUNC3(data[0], devpriv->i_IobaseAddon);
			}	/*  if(data[1]==1) */
			else {
				FUNC4("\nSpecified channel not supported\n");
			}	/* else if(data[1]==1) */
		}		/* elseif(data[1]==0) */
	}			/* if(data[3]==0) */
	else {
		if (data[3] == 1) {
			if (data[1] == 0) {
				data[0] = ~data[0] & 0x1;
				ui_Temp1 = 1;
				ui_Temp1 = ui_Temp1 << ui_NoOfChannel;
				ui_Temp = ui_Temp | ui_Temp1;
				data[0] = (data[0] << ui_NoOfChannel) ^ 0xf;
				data[0] = data[0] & ui_Temp;
				FUNC3(data[0], devpriv->i_IobaseAddon);
			}	/* if(data[1]==0) */
			else {
				if (data[1] == 1) {
					switch (ui_NoOfChannel) {

					case 2:
						data[0] = ~data[0] & 0x3;
						ui_Temp1 = 3;
						ui_Temp1 =
							ui_Temp1 << 2 * data[2];
						ui_Temp = ui_Temp | ui_Temp1;
						data[0] =
							((data[0] << (2 *
									data
									[2])) ^
							0xf) & ui_Temp;

						break;
					case 3:
						break;

					default:
						FUNC1(dev,
							" chan spec wrong");
						return -EINVAL;	/*  "sorry channel spec wrong " */
					}	/* switch(ui_NoOfChannels) */

					FUNC3(data[0], devpriv->i_IobaseAddon);
				}	/*  if(data[1]==1) */
				else {
					FUNC4("\nSpecified channel not supported\n");
				}	/* else if(data[1]==1) */
			}	/* elseif(data[1]==0) */
		}		/* if(data[3]==1); */
		else {
			FUNC4("\nSpecified functionality does not exist\n");
			return -EINVAL;
		}		/* if else data[3]==1) */
	}			/* if else data[3]==0) */
	return insn->n;
}