
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {size_t minor; } ;
struct TYPE_4__ {int tsk_Current; scalar_t__ iobase; } ;
struct TYPE_3__ {int i_ScanType; unsigned int* ui_InterruptChannelValue; size_t i_Count; unsigned int ui_Channel_num; int i_Sum; int i_ChannelCount; int i_InterruptFlag; int i_ADDIDATAGain; int i_CJCGain; int i_ADDIDATAPolarity; int i_CJCPolarity; scalar_t__ i_Offset; int i_ADDIDATAType; } ;


 int SIGIO ;
 TYPE_2__* devpriv ;
 int i_APCI3200_InterruptHandleEos (struct comedi_device*) ;
 int i_APCI3200_ReadCJCCalGain (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCJCCalOffset (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCJCValue (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCalibrationGainValue (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCalibrationOffsetValue (struct comedi_device*,unsigned int*) ;
 int inl (int ) ;
 TYPE_1__* s_BoardInfos ;
 int send_sig (int ,int ,int ) ;

void v_APCI3200_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned int ui_StatusRegister = 0;
 unsigned int ui_ChannelNumber = 0;
 int i_CalibrationFlag = 0;
 int i_CJCFlag = 0;
 unsigned int ui_DummyValue = 0;
 unsigned int ui_DigitalTemperature = 0;
 unsigned int ui_DigitalInput = 0;
 int i_ConvertCJCCalibration;


 int i_ReturnValue = 0;





 switch (s_BoardInfos[dev->minor].i_ScanType) {
 case 0:
 case 1:

  switch (s_BoardInfos[dev->minor].i_ADDIDATAType) {
  case 0:
  case 1:





   ui_StatusRegister =
    inl(devpriv->iobase +
    s_BoardInfos[dev->minor].i_Offset + 16);
   if ((ui_StatusRegister & 0x2) == 0x2) {

    i_CalibrationFlag =
     ((inl(devpriv->iobase +
       s_BoardInfos[dev->
        minor].
       i_Offset +
       12) & 0x00060000) >>
     17);
    ui_DigitalInput =
     inl(devpriv->iobase +
     s_BoardInfos[dev->minor].i_Offset + 28);




    if (i_CalibrationFlag == 0) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 0] = ui_DigitalInput;
     i_APCI3200_ReadCalibrationOffsetValue
      (dev, &ui_DummyValue);
    }




    if (i_CalibrationFlag == 1) {






     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 1] = ui_DigitalInput;




     i_APCI3200_ReadCalibrationGainValue(dev,
      &ui_DummyValue);
    }




    if (i_CalibrationFlag == 2) {





     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 2] = ui_DigitalInput;

     if (s_BoardInfos[dev->minor].
      i_ScanType == 1) {


      s_BoardInfos[dev->minor].
       i_InterruptFlag = 0;



      s_BoardInfos[dev->minor].
       i_Count =
       s_BoardInfos[dev->
       minor].i_Count + 9;

     }
     else {

      s_BoardInfos[dev->minor].
       i_Count = 0;
     }

     if (s_BoardInfos[dev->minor].
      i_ScanType != 1) {
      i_ReturnValue = send_sig(SIGIO, devpriv->tsk_Current, 0);
     }
     else {

      if (s_BoardInfos[dev->minor].
       i_ChannelCount ==
       s_BoardInfos[dev->
        minor].i_Sum) {
       send_sig(SIGIO, devpriv->tsk_Current, 0);
      }
     }
    }
   }

   break;

  case 2:





   ui_StatusRegister =
    inl(devpriv->iobase +
    s_BoardInfos[dev->minor].i_Offset + 16);




   if ((ui_StatusRegister & 0x2) == 0x2) {


    i_CJCFlag =
     ((inl(devpriv->iobase +
       s_BoardInfos[dev->
        minor].
       i_Offset +
       4) & 0x00000400) >> 10);


    i_CalibrationFlag =
     ((inl(devpriv->iobase +
       s_BoardInfos[dev->
        minor].
       i_Offset +
       12) & 0x00060000) >>
     17);






    ui_ChannelNumber =
     inl(devpriv->iobase +
     s_BoardInfos[dev->minor].i_Offset + 24);

    s_BoardInfos[dev->minor].ui_Channel_num =
     ui_ChannelNumber;






    ui_DigitalTemperature =
     inl(devpriv->iobase +
     s_BoardInfos[dev->minor].i_Offset + 28);





    if ((i_CalibrationFlag == 0)
     && (i_CJCFlag == 0)) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 0] =
      ui_DigitalTemperature;




     i_APCI3200_ReadCJCValue(dev,
      &ui_DummyValue);

    }





    if ((i_CJCFlag == 1)
     && (i_CalibrationFlag == 0)) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 3] =
      ui_DigitalTemperature;




     i_APCI3200_ReadCalibrationOffsetValue
      (dev, &ui_DummyValue);
    }





    if ((i_CalibrationFlag == 1)
     && (i_CJCFlag == 0)) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 1] =
      ui_DigitalTemperature;




     i_APCI3200_ReadCalibrationGainValue(dev,
      &ui_DummyValue);

    }





    if ((i_CalibrationFlag == 2)
     && (i_CJCFlag == 0)) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 2] =
      ui_DigitalTemperature;
     if (s_BoardInfos[dev->minor].
      i_CJCPolarity !=
      s_BoardInfos[dev->minor].
      i_ADDIDATAPolarity) {
      i_ConvertCJCCalibration = 1;
     }
     else {

      if (s_BoardInfos[dev->minor].
       i_CJCGain ==
       s_BoardInfos[dev->
        minor].
       i_ADDIDATAGain) {
       i_ConvertCJCCalibration
        = 0;
      }
      else {
       i_ConvertCJCCalibration
        = 1;
      }
     }
     if (i_ConvertCJCCalibration == 1) {



      i_APCI3200_ReadCJCCalOffset(dev,
       &ui_DummyValue);

     }
     else {


      s_BoardInfos[dev->minor].
       ui_InterruptChannelValue
       [s_BoardInfos[dev->
        minor].i_Count +
       4] = 0;
      s_BoardInfos[dev->minor].
       ui_InterruptChannelValue
       [s_BoardInfos[dev->
        minor].i_Count +
       5] = 0;
     }
    }





    if ((i_CalibrationFlag == 1)
     && (i_CJCFlag == 1)) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 4] =
      ui_DigitalTemperature;




     i_APCI3200_ReadCJCCalGain(dev,
      &ui_DummyValue);

    }





    if ((i_CalibrationFlag == 2)
     && (i_CJCFlag == 1)) {

     s_BoardInfos[dev->minor].
      ui_InterruptChannelValue
      [s_BoardInfos[dev->minor].
      i_Count + 5] =
      ui_DigitalTemperature;


     if (s_BoardInfos[dev->minor].
      i_ScanType == 1) {


      s_BoardInfos[dev->minor].
       i_InterruptFlag = 0;



      s_BoardInfos[dev->minor].
       i_Count =
       s_BoardInfos[dev->
       minor].i_Count + 9;

     }
     else {

      s_BoardInfos[dev->minor].
       i_Count = 0;
     }


     if (s_BoardInfos[dev->minor].
      i_ScanType != 1) {
      send_sig(SIGIO, devpriv->tsk_Current, 0);
     }
     else {

      if (s_BoardInfos[dev->minor].
       i_ChannelCount ==
       s_BoardInfos[dev->
        minor].i_Sum) {
       send_sig(SIGIO, devpriv->tsk_Current, 0);

      }
     }
    }

   }
   break;
  }
  break;
 case 2:
 case 3:
  i_APCI3200_InterruptHandleEos(dev);
  break;
 }
 return;
}
