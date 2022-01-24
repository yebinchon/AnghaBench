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
typedef  int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_4__ {scalar_t__ reg_type; } ;
struct TYPE_3__ {short (* stc_readw ) (struct comedi_device*,int /*<<< orphan*/ ) ;short* ai_fifo_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_FIFO_Data_611x ; 
 int /*<<< orphan*/  ADC_FIFO_Data_Register ; 
 int /*<<< orphan*/  AIFIFO_Control_6143 ; 
 int /*<<< orphan*/  AIFIFO_Data_6143 ; 
 int /*<<< orphan*/  AIFIFO_Status_6143 ; 
 short AI_FIFO_Empty_St ; 
 int /*<<< orphan*/  AI_Status_1_Register ; 
 int NI_AI_SUBDEV ; 
 TYPE_2__ boardtype ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,short*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,short) ; 
 TYPE_1__* devpriv ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 short FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ni_reg_611x ; 
 scalar_t__ ni_reg_6143 ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 short FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 short FUNC6 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 short FUNC7 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
	short data[2];
	u32 dl;
	short fifo_empty;
	int i;

	if (boardtype.reg_type == ni_reg_611x) {
		while ((devpriv->stc_readw(dev,
					   AI_Status_1_Register) &
			AI_FIFO_Empty_St) == 0) {
			dl = FUNC2(ADC_FIFO_Data_611x);

			/* This may get the hi/lo data in the wrong order */
			data[0] = (dl >> 16);
			data[1] = (dl & 0xffff);
			FUNC0(s, data, sizeof(data));
		}
	} else if (boardtype.reg_type == ni_reg_6143) {
		i = 0;
		while (FUNC2(AIFIFO_Status_6143) & 0x04) {
			dl = FUNC2(AIFIFO_Data_6143);

			/* This may get the hi/lo data in the wrong order */
			data[0] = (dl >> 16);
			data[1] = (dl & 0xffff);
			FUNC0(s, data, sizeof(data));
			i += 2;
		}
		/*  Check if stranded sample is present */
		if (FUNC2(AIFIFO_Status_6143) & 0x01) {
			FUNC4(0x01, AIFIFO_Control_6143);	/*  Get stranded sample into FIFO */
			dl = FUNC2(AIFIFO_Data_6143);
			data[0] = (dl >> 16) & 0xffff;
			FUNC1(s, data[0]);
		}

	} else {
		fifo_empty =
		    devpriv->stc_readw(dev,
				       AI_Status_1_Register) & AI_FIFO_Empty_St;
		while (fifo_empty == 0) {
			for (i = 0;
			     i <
			     sizeof(devpriv->ai_fifo_buffer) /
			     sizeof(devpriv->ai_fifo_buffer[0]); i++) {
				fifo_empty =
				    devpriv->stc_readw(dev,
						       AI_Status_1_Register) &
				    AI_FIFO_Empty_St;
				if (fifo_empty)
					break;
				devpriv->ai_fifo_buffer[i] =
				    FUNC3(ADC_FIFO_Data_Register);
			}
			FUNC0(s, devpriv->ai_fifo_buffer,
						  i *
						  sizeof(devpriv->
							 ai_fifo_buffer[0]));
		}
	}
}