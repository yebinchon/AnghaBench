
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int* unused; int n; } ;
struct comedi_device {size_t minor; } ;
struct TYPE_2__ {scalar_t__ i_Initialised; unsigned int* ui_InterruptChannelValue; size_t i_Count; int i_ADDIDATAType; int i_InterruptFlag; int i_CJCAvailable; int i_AutoCalibration; int i_ScanType; int i_Sum; int ui_Channel_num; int i_ADDIDATAGain; int i_CJCGain; int i_ADDIDATAPolarity; int i_CJCPolarity; } ;


 int EINVAL ;
 int FALSE ;
 int i_APCI3200_GetChannelCalibrationValue (struct comedi_device*,int ,unsigned int*,unsigned int*,unsigned int*) ;
 int i_APCI3200_Read1AnalogInputChannel (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int i_APCI3200_ReadCJCCalGain (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCJCCalOffset (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCJCValue (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCalibrationGainValue (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_ReadCalibrationOffsetValue (struct comedi_device*,unsigned int*) ;
 int i_APCI3200_Reset (struct comedi_device*) ;
 int printk (char*,...) ;
 TYPE_1__* s_BoardInfos ;

int i_APCI3200_ReadAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_DummyValue = 0;
 int i_ConvertCJCCalibration;
 int i = 0;



 if (s_BoardInfos[dev->minor].i_Initialised == 0)

 {
  i_APCI3200_Reset(dev);
  return -EINVAL;
 }





 switch (insn->unused[0]) {
 case 0:

  i_APCI3200_Read1AnalogInputChannel(dev, s, insn,
   &ui_DummyValue);


  s_BoardInfos[dev->minor].
   ui_InterruptChannelValue[s_BoardInfos[dev->minor].
   i_Count + 0] = ui_DummyValue;



  i_APCI3200_GetChannelCalibrationValue(dev,
   s_BoardInfos[dev->minor].ui_Channel_num,
   &s_BoardInfos[dev->minor].
   ui_InterruptChannelValue[s_BoardInfos[dev->minor].
    i_Count + 6],
   &s_BoardInfos[dev->minor].
   ui_InterruptChannelValue[s_BoardInfos[dev->minor].
    i_Count + 7],
   &s_BoardInfos[dev->minor].
   ui_InterruptChannelValue[s_BoardInfos[dev->minor].
    i_Count + 8]);
  if ((s_BoardInfos[dev->minor].i_ADDIDATAType == 2)
   && (s_BoardInfos[dev->minor].i_InterruptFlag == FALSE)
   && (s_BoardInfos[dev->minor].i_CJCAvailable == 1))

  {
   i_APCI3200_ReadCJCValue(dev, &ui_DummyValue);


   s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[s_BoardInfos[dev->
     minor].i_Count + 3] = ui_DummyValue;

  }
  else {


   s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[s_BoardInfos[dev->
     minor].i_Count + 3] = 0;

  }



  if ((s_BoardInfos[dev->minor].i_AutoCalibration == FALSE)
   && (s_BoardInfos[dev->minor].i_InterruptFlag == FALSE))

  {
   i_APCI3200_ReadCalibrationOffsetValue(dev,
    &ui_DummyValue);


   s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[s_BoardInfos[dev->
     minor].i_Count + 1] = ui_DummyValue;

   i_APCI3200_ReadCalibrationGainValue(dev,
    &ui_DummyValue);


   s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[s_BoardInfos[dev->
     minor].i_Count + 2] = ui_DummyValue;

  }



  if ((s_BoardInfos[dev->minor].i_ADDIDATAType == 2)
   && (s_BoardInfos[dev->minor].i_InterruptFlag == FALSE)
   && (s_BoardInfos[dev->minor].i_CJCAvailable == 1))

  {
   if (s_BoardInfos[dev->minor].i_CJCPolarity !=
    s_BoardInfos[dev->minor].i_ADDIDATAPolarity)

   {
    i_ConvertCJCCalibration = 1;
   }
   else {


    if (s_BoardInfos[dev->minor].i_CJCGain ==
     s_BoardInfos[dev->minor].i_ADDIDATAGain)

    {
     i_ConvertCJCCalibration = 0;
    }
    else {
     i_ConvertCJCCalibration = 1;
    }
   }
   if (i_ConvertCJCCalibration == 1) {
    i_APCI3200_ReadCJCCalOffset(dev,
     &ui_DummyValue);


    s_BoardInfos[dev->minor].
     ui_InterruptChannelValue[s_BoardInfos
     [dev->minor].i_Count + 4] =
     ui_DummyValue;


    i_APCI3200_ReadCJCCalGain(dev, &ui_DummyValue);



    s_BoardInfos[dev->minor].
     ui_InterruptChannelValue[s_BoardInfos
     [dev->minor].i_Count + 5] =
     ui_DummyValue;

   }
   else {




    s_BoardInfos[dev->minor].
     ui_InterruptChannelValue[s_BoardInfos
     [dev->minor].i_Count + 4] = 0;
    s_BoardInfos[dev->minor].
     ui_InterruptChannelValue[s_BoardInfos
     [dev->minor].i_Count + 5] = 0;

   }
  }



  if (s_BoardInfos[dev->minor].i_ScanType != 1) {

   s_BoardInfos[dev->minor].i_Count = 0;
  }
  else {



   s_BoardInfos[dev->minor].i_Count =
    s_BoardInfos[dev->minor].i_Count + 9;

  }


  if ((s_BoardInfos[dev->minor].i_ScanType == 1)
   && (s_BoardInfos[dev->minor].i_InterruptFlag == 1)) {



   s_BoardInfos[dev->minor].i_Count =
    s_BoardInfos[dev->minor].i_Count - 9;

  }

  if (s_BoardInfos[dev->minor].i_ScanType == 0) {
   data[0] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[0];
   data[1] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[1];
   data[2] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[2];
   data[3] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[3];
   data[4] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[4];
   data[5] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[5];



   i_APCI3200_GetChannelCalibrationValue(dev,
    s_BoardInfos[dev->minor].ui_Channel_num,
    &data[6], &data[7], &data[8]);

  }
  break;
 case 1:

  for (i = 0; i < insn->n; i++) {

   data[i] =
    s_BoardInfos[dev->minor].
    ui_InterruptChannelValue[i];
  }




  s_BoardInfos[dev->minor].i_Count = 0;
  s_BoardInfos[dev->minor].i_Sum = 0;
  if (s_BoardInfos[dev->minor].i_ScanType == 1) {


   s_BoardInfos[dev->minor].i_Initialised = 0;
   s_BoardInfos[dev->minor].i_InterruptFlag = 0;

  }
  break;
 default:
  printk("\nThe parameters passed are in error\n");
  i_APCI3200_Reset(dev);
  return -EINVAL;
 }

 return insn->n;
}
