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
struct comedi_device {size_t minor; } ;
struct TYPE_4__ {scalar_t__ iobase; } ;
struct TYPE_3__ {unsigned int i_ADDIDATAConversionTimeUnit; unsigned int i_ADDIDATAConversionTime; scalar_t__ i_InterruptFlag; scalar_t__ i_Offset; } ;

/* Variables and functions */
 scalar_t__ ADDIDATA_DISABLE ; 
 scalar_t__ ADDIDATA_ENABLE ; 
 TYPE_2__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 TYPE_1__* s_BoardInfos ; 

int FUNC2(struct comedi_device *dev, unsigned int *data)
{
	unsigned int ui_Temp = 0, ui_EOC = 0;
	unsigned int ui_CommandRegister = 0;

	/* BEGIN JK 06.07.04: Management of sevrals boards */
	/* while (((inl(devpriv->iobase+i_Offset+12)>>19) & 1) != 1); */
	while (((FUNC0(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
					12) >> 19) & 1) != 1) ;
  /*********************************/
	/* Write the channel to configure */
  /*********************************/
	/* Begin JK 20.10.2004: This seems not necessary ! */
	/* outl(0 | ui_Channel_num , devpriv->iobase+i_Offset + 0x4); */
	/* outl(0 | s_BoardInfos [dev->minor].ui_Channel_num , devpriv->iobase+s_BoardInfos [dev->minor].i_Offset + 0x4); */
	/* End JK 20.10.2004: This seems not necessary ! */

  /*******************************/
	/* Set the convert timing unit */
  /*******************************/
	/* while (((inl(devpriv->iobase+i_Offset+12)>>19) & 1) != 1); */
	while (((FUNC0(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
					12) >> 19) & 1) != 1) ;
	/* outl(i_ADDIDATAConversionTimeUnit , devpriv->iobase+i_Offset + 36); */
	FUNC1(s_BoardInfos[dev->minor].i_ADDIDATAConversionTimeUnit,
		devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 36);
  /**************************/
	/* Set the convert timing */
  /**************************/
	/* while (((inl(devpriv->iobase+i_Offset+12)>>19) & 1) != 1); */
	while (((FUNC0(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
					12) >> 19) & 1) != 1) ;
	/* outl(i_ADDIDATAConversionTime , devpriv->iobase+i_Offset + 32); */
	FUNC1(s_BoardInfos[dev->minor].i_ADDIDATAConversionTime,
		devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 32);
  /*****************************/
	/*Read the calibration offset */
  /*****************************/
	/* ui_Temp = inl(devpriv->iobase+i_Offset + 12); */
	ui_Temp = FUNC0(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);

  /*********************************/
	/*Configure the Offset Conversion */
  /*********************************/
	/* while (((inl(devpriv->iobase+i_Offset+12)>>19) & 1) != 1); */
	while (((FUNC0(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
					12) >> 19) & 1) != 1) ;
	/* outl((ui_Temp | 0x00020000), devpriv->iobase+i_Offset + 12); */
	FUNC1((ui_Temp | 0x00020000),
		devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);
  /*******************************/
	/*Initialise ui_CommandRegister */
  /*******************************/

	ui_CommandRegister = 0;

  /*********************************/
	/*Test if the interrupt is enable */
  /*********************************/

	/* if (i_InterruptFlag == ADDIDATA_ENABLE) */
	if (s_BoardInfos[dev->minor].i_InterruptFlag == ADDIDATA_ENABLE) {

      /**********************/
		/*Enable the interrupt */
      /**********************/

		ui_CommandRegister = ui_CommandRegister | 0x00100000;

	}			/* if (i_InterruptFlag == ADDIDATA_ENABLE) */

  /**********************/
	/*Start the conversion */
  /**********************/
	ui_CommandRegister = ui_CommandRegister | 0x00080000;

  /***************************/
	/*Write the command regiter */
  /***************************/
	/* while (((inl(devpriv->iobase+i_Offset+12)>>19) & 1) != 1); */
	while (((FUNC0(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
					12) >> 19) & 1) != 1) ;
	/* outl(ui_CommandRegister, devpriv->iobase+i_Offset + 8); */
	FUNC1(ui_CommandRegister,
		devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 8);

  /*****************************/
	/*Test if interrupt is enable */
  /*****************************/

	/* if (i_InterruptFlag == ADDIDATA_DISABLE) */
	if (s_BoardInfos[dev->minor].i_InterruptFlag == ADDIDATA_DISABLE) {

		do {
	  /*******************/
			/*Read the EOC flag */
	  /*******************/

			/* ui_EOC = inl (devpriv->iobase+i_Offset + 20) & 1; */
			ui_EOC = FUNC0(devpriv->iobase +
				s_BoardInfos[dev->minor].i_Offset + 20) & 1;

		} while (ui_EOC != 1);

      /**************************************************/
		/*Read the digital value of the calibration Offset */
      /**************************************************/

		/* data[0] = inl(devpriv->iobase+i_Offset+ 28); */
		data[0] =
			FUNC0(devpriv->iobase +
			s_BoardInfos[dev->minor].i_Offset + 28);
	}			/* if (i_InterruptFlag == ADDIDATA_DISABLE) */
	return 0;
}