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
struct TYPE_4__ {scalar_t__ b_SingelDiff; unsigned char b_EocEosInterrupt; int ui_AiNbrofChannels; scalar_t__ dw_AiBase; TYPE_1__* ps_BoardInfo; scalar_t__ b_AiInitialisation; } ;
struct TYPE_3__ {unsigned char i_NbrAiChannel; unsigned char i_NbrAiChannelDiff; } ;

/* Variables and functions */
 scalar_t__ APCI3XXX_DIFF ; 
 scalar_t__ APCI3XXX_SINGLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* devpriv ; 
 scalar_t__ FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 

int FUNC6(struct comedi_device *dev,
	struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
	int i_ReturnValue = insn->n;
	unsigned char b_Configuration = (unsigned char) FUNC1(insn->chanspec);
	unsigned char b_Channel = (unsigned char) FUNC0(insn->chanspec);
	unsigned int dw_Temp = 0;
	unsigned int dw_Configuration = 0;
	unsigned int dw_AcquisitionCpt = 0;
	unsigned char b_Interrupt = 0;

	/*************************************/
	/* Test if operating mode configured */
	/*************************************/

	if (devpriv->b_AiInitialisation) {
	   /***************************/
		/* Test the channel number */
	   /***************************/

		if (((b_Channel < devpriv->ps_BoardInfo->i_NbrAiChannel)
				&& (devpriv->b_SingelDiff == APCI3XXX_SINGLE))
			|| ((b_Channel < devpriv->ps_BoardInfo->
					i_NbrAiChannelDiff)
				&& (devpriv->b_SingelDiff == APCI3XXX_DIFF))) {
	      /**********************************/
			/* Test the channel configuration */
	      /**********************************/

			if (b_Configuration > 7) {
		 /***************************/
				/* Channel not initialised */
		 /***************************/

				i_ReturnValue = -4;
				FUNC3("Channel %d range %d selection error\n",
					b_Channel, b_Configuration);
			}
		} else {
	      /***************************/
			/* Channel selection error */
	      /***************************/

			i_ReturnValue = -3;
			FUNC3("Channel %d selection error\n", b_Channel);
		}

	   /**************************/
		/* Test if no error occur */
	   /**************************/

		if (i_ReturnValue >= 0) {
	      /************************/
			/* Test the buffer size */
	      /************************/

			if ((b_Interrupt != 0) || ((b_Interrupt == 0)
					&& (insn->n >= 1))) {
		 /**********************************/
				/* Test if conversion not started */
		 /**********************************/

				if (FUNC2(dev) == 0) {
		    /******************/
					/* Clear the FIFO */
		    /******************/

					FUNC5(0x10000UL,
						(void *)(devpriv->dw_AiBase +
							12));

		    /*******************************/
					/* Get and save the delay mode */
		    /*******************************/

					dw_Temp =
						FUNC4((void *)(devpriv->
							dw_AiBase + 4));
					dw_Temp = dw_Temp & 0xFFFFFEF0UL;

		    /***********************************/
					/* Channel configuration selection */
		    /***********************************/

					FUNC5(dw_Temp,
						(void *)(devpriv->dw_AiBase +
							4));

		    /**************************/
					/* Make the configuration */
		    /**************************/

					dw_Configuration =
						(b_Configuration & 3) |
						((unsigned int) (b_Configuration >> 2)
						<< 6) | ((unsigned int) devpriv->
						b_SingelDiff << 7);

		    /***************************/
					/* Write the configuration */
		    /***************************/

					FUNC5(dw_Configuration,
						(void *)(devpriv->dw_AiBase +
							0));

		    /*********************/
					/* Channel selection */
		    /*********************/

					FUNC5(dw_Temp | 0x100UL,
						(void *)(devpriv->dw_AiBase +
							4));
					FUNC5((unsigned int) b_Channel,
						(void *)(devpriv->dw_AiBase +
							0));

		    /***********************/
					/* Restaure delay mode */
		    /***********************/

					FUNC5(dw_Temp,
						(void *)(devpriv->dw_AiBase +
							4));

		    /***********************************/
					/* Set the number of sequence to 1 */
		    /***********************************/

					FUNC5(1,
						(void *)(devpriv->dw_AiBase +
							48));

		    /***************************/
					/* Save the interrupt flag */
		    /***************************/

					devpriv->b_EocEosInterrupt =
						b_Interrupt;

		    /*******************************/
					/* Save the number of channels */
		    /*******************************/

					devpriv->ui_AiNbrofChannels = 1;

		    /******************************/
					/* Test if interrupt not used */
		    /******************************/

					if (b_Interrupt == 0) {
						for (dw_AcquisitionCpt = 0;
							dw_AcquisitionCpt <
							insn->n;
							dw_AcquisitionCpt++) {
			  /************************/
							/* Start the conversion */
			  /************************/

							FUNC5(0x80000UL,
								(void *)
								(devpriv->
									dw_AiBase
									+ 8));

			  /****************/
							/* Wait the EOS */
			  /****************/

							do {
								dw_Temp =
									FUNC4(
									(void *)
									(devpriv->
										dw_AiBase
										+
										20));
								dw_Temp =
									dw_Temp
									& 1;
							} while (dw_Temp != 1);

			  /*************************/
							/* Read the analog value */
			  /*************************/

							data[dw_AcquisitionCpt]
								=
								(unsigned int)
								FUNC4((void
									*)
								(devpriv->
									dw_AiBase
									+ 28));
						}
					} else {
		       /************************/
						/* Start the conversion */
		       /************************/

						FUNC5(0x180000UL,
							(void *)(devpriv->
								dw_AiBase + 8));
					}
				} else {
		    /**************************/
					/* Any conversion started */
		    /**************************/

					FUNC3("Any conversion started\n");
					i_ReturnValue = -10;
				}
			} else {
		 /*******************/
				/* Data size error */
		 /*******************/

				FUNC3("Buffer size error\n");
				i_ReturnValue = -101;
			}
		}
	} else {
	   /***************************/
		/* Channel selection error */
	   /***************************/

		FUNC3("Operating mode not configured\n");
		i_ReturnValue = -1;
	}
	return i_ReturnValue;
}