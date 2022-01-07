
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; scalar_t__* unused; int chanspec; } ;
struct comedi_device {size_t minor; } ;
struct TYPE_7__ {int iobase; int tsk_Current; int i_IobaseAmcc; } ;
struct TYPE_6__ {int * w_GainValue; int * ul_GainFactor; int * ul_CurrentSource; int ul_CurrentSourceCJC; } ;
struct TYPE_5__ {int b_StructInitialized; int i_CJCAvailable; int i_CJCGain; int i_InterruptFlag; unsigned int i_ChannelCount; unsigned int ui_Channel_num; int i_Initialised; unsigned int i_ConnectionType; unsigned int i_ScanType; unsigned int i_ADDIDATAPolarity; unsigned int i_ADDIDATAGain; unsigned int i_ADDIDATAConversionTime; unsigned int i_ADDIDATAConversionTimeUnit; unsigned int i_ADDIDATAType; unsigned int i_ChannelNo; int i_Offset; scalar_t__ i_Sum; scalar_t__ i_Count; TYPE_3__* ui_ScanValueArray; TYPE_3__* s_Module; scalar_t__ i_AutoCalibration; scalar_t__ i_CJCPolarity; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int MAX_MODULE ;
 int current ;
 TYPE_4__* devpriv ;
 int i_APCI3200_ReadAnalogInput (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int i_APCI3200_Reset (struct comedi_device*) ;
 int inl (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int outl (unsigned int,int) ;
 int printk (char*,...) ;
 TYPE_1__* s_BoardInfos ;
 int udelay (int) ;
 int v_GetAPCI3200EepromCalibrationValue (int ,TYPE_1__*) ;

int i_APCI3200_ConfigAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{

 unsigned int ul_Config = 0, ul_Temp = 0;
 unsigned int ui_ChannelNo = 0;
 unsigned int ui_Dummy = 0;
 int i_err = 0;
 if (s_BoardInfos[dev->minor].b_StructInitialized != 1) {
  s_BoardInfos[dev->minor].i_CJCAvailable = 1;
  s_BoardInfos[dev->minor].i_CJCPolarity = 0;
  s_BoardInfos[dev->minor].i_CJCGain = 2;
  s_BoardInfos[dev->minor].i_InterruptFlag = 0;
  s_BoardInfos[dev->minor].i_AutoCalibration = 0;
  s_BoardInfos[dev->minor].i_ChannelCount = 0;
  s_BoardInfos[dev->minor].i_Sum = 0;
  s_BoardInfos[dev->minor].ui_Channel_num = 0;
  s_BoardInfos[dev->minor].i_Count = 0;
  s_BoardInfos[dev->minor].i_Initialised = 0;
  s_BoardInfos[dev->minor].b_StructInitialized = 1;


  s_BoardInfos[dev->minor].i_ConnectionType = 0;



  memset(s_BoardInfos[dev->minor].s_Module, 0,
   sizeof(s_BoardInfos[dev->minor].s_Module[MAX_MODULE]));

  v_GetAPCI3200EepromCalibrationValue(devpriv->i_IobaseAmcc,
   &s_BoardInfos[dev->minor]);
 }

 if (data[0] != 0 && data[0] != 1 && data[0] != 2) {
  printk("\nThe selection of acquisition type is in error\n");
  i_err++;
 }
 if (data[0] == 1) {
  if (data[14] != 0 && data[14] != 1 && data[14] != 2
   && data[14] != 4) {
   printk("\n Error in selection of RTD connection type\n");
   i_err++;
  }
 }
 if (data[1] < 0 || data[1] > 7) {
  printk("\nThe selection of gain is in error\n");
  i_err++;
 }
 if (data[2] != 0 && data[2] != 1) {
  printk("\nThe selection of polarity is in error\n");
  i_err++;
 }
 if (data[3] != 0) {
  printk("\nThe selection of offset range  is in error\n");
  i_err++;
 }
 if (data[4] != 0 && data[4] != 1) {
  printk("\nThe selection of coupling is in error\n");
  i_err++;
 }
 if (data[5] != 0 && data[5] != 1) {
  printk("\nThe selection of single/differential mode is in error\n");
  i_err++;
 }
 if (data[8] != 0 && data[8] != 1 && data[2] != 2) {
  printk("\nError in selection of functionality\n");
 }
 if (data[12] == 0 || data[12] == 1) {
  if (data[6] != 20 && data[6] != 40 && data[6] != 80
   && data[6] != 160) {
   printk("\nThe selection of conversion time reload value is in error\n");
   i_err++;
  }
  if (data[7] != 2) {
   printk("\nThe selection of conversion time unit  is in error\n");
   i_err++;
  }
 }
 if (data[9] != 0 && data[9] != 1) {
  printk("\nThe selection of interrupt enable is in error\n");
  i_err++;
 }
 if (data[11] < 0 || data[11] > 4) {
  printk("\nThe selection of module is in error\n");
  i_err++;
 }
 if (data[12] < 0 || data[12] > 3) {
  printk("\nThe selection of singlechannel/scan selection is in error\n");
  i_err++;
 }
 if (data[13] < 0 || data[13] > 16) {
  printk("\nThe selection of number of channels is in error\n");
  i_err++;
 }
 s_BoardInfos[dev->minor].i_ChannelCount = data[13];
 s_BoardInfos[dev->minor].i_ScanType = data[12];
 s_BoardInfos[dev->minor].i_ADDIDATAPolarity = data[2];
 s_BoardInfos[dev->minor].i_ADDIDATAGain = data[1];
 s_BoardInfos[dev->minor].i_ADDIDATAConversionTime = data[6];
 s_BoardInfos[dev->minor].i_ADDIDATAConversionTimeUnit = data[7];
 s_BoardInfos[dev->minor].i_ADDIDATAType = data[0];

 s_BoardInfos[dev->minor].i_ConnectionType = data[5];




 memset(s_BoardInfos[dev->minor].ui_ScanValueArray, 0, (7 + 12) * sizeof(unsigned int));




 while (s_BoardInfos[dev->minor].i_InterruptFlag == 1) {

  udelay(1);







 }


 ui_ChannelNo = CR_CHAN(insn->chanspec);




 s_BoardInfos[dev->minor].i_ChannelNo = ui_ChannelNo;
 s_BoardInfos[dev->minor].ui_Channel_num = ui_ChannelNo;



 if (data[5] == 0) {
  if (ui_ChannelNo < 0 || ui_ChannelNo > 15) {
   printk("\nThe Selection of the channel is in error\n");
   i_err++;
  }
 }
 else {
  if (data[14] == 2) {
   if (ui_ChannelNo < 0 || ui_ChannelNo > 3) {
    printk("\nThe Selection of the channel is in error\n");
    i_err++;
   }
  }
  else {
   if (ui_ChannelNo < 0 || ui_ChannelNo > 7) {
    printk("\nThe Selection of the channel is in error\n");
    i_err++;
   }
  }
 }
 if (data[12] == 0 || data[12] == 1) {
  switch (data[5]) {
  case 0:
   if (ui_ChannelNo >= 0 && ui_ChannelNo <= 3) {


    s_BoardInfos[dev->minor].i_Offset = 0;

   }
   if (ui_ChannelNo >= 4 && ui_ChannelNo <= 7) {


    s_BoardInfos[dev->minor].i_Offset = 64;

   }
   if (ui_ChannelNo >= 8 && ui_ChannelNo <= 11) {


    s_BoardInfos[dev->minor].i_Offset = 128;

   }
   if (ui_ChannelNo >= 12 && ui_ChannelNo <= 15) {


    s_BoardInfos[dev->minor].i_Offset = 192;

   }
   break;
  case 1:
   if (data[14] == 2) {
    if (ui_ChannelNo == 0) {


     s_BoardInfos[dev->minor].i_Offset = 0;

    }
    if (ui_ChannelNo == 1) {


     s_BoardInfos[dev->minor].i_Offset = 64;

    }
    if (ui_ChannelNo == 2) {


     s_BoardInfos[dev->minor].i_Offset = 128;

    }
    if (ui_ChannelNo == 3) {


     s_BoardInfos[dev->minor].i_Offset = 192;

    }



    s_BoardInfos[dev->minor].i_ChannelNo = 0;

    ui_ChannelNo = 0;
    break;
   }
   if (ui_ChannelNo >= 0 && ui_ChannelNo <= 1) {


    s_BoardInfos[dev->minor].i_Offset = 0;

   }
   if (ui_ChannelNo >= 2 && ui_ChannelNo <= 3) {



    s_BoardInfos[dev->minor].i_ChannelNo =
     s_BoardInfos[dev->minor].i_ChannelNo -
     2;
    s_BoardInfos[dev->minor].i_Offset = 64;

    ui_ChannelNo = ui_ChannelNo - 2;
   }
   if (ui_ChannelNo >= 4 && ui_ChannelNo <= 5) {



    s_BoardInfos[dev->minor].i_ChannelNo =
     s_BoardInfos[dev->minor].i_ChannelNo -
     4;
    s_BoardInfos[dev->minor].i_Offset = 128;

    ui_ChannelNo = ui_ChannelNo - 4;
   }
   if (ui_ChannelNo >= 6 && ui_ChannelNo <= 7) {



    s_BoardInfos[dev->minor].i_ChannelNo =
     s_BoardInfos[dev->minor].i_ChannelNo -
     6;
    s_BoardInfos[dev->minor].i_Offset = 192;

    ui_ChannelNo = ui_ChannelNo - 6;
   }
   break;

  default:
   printk("\n This selection of polarity does not exist\n");
   i_err++;
  }
 }
 else {
  switch (data[11]) {
  case 1:


   s_BoardInfos[dev->minor].i_Offset = 0;

   break;
  case 2:


   s_BoardInfos[dev->minor].i_Offset = 64;

   break;
  case 3:


   s_BoardInfos[dev->minor].i_Offset = 128;

   break;
  case 4:


   s_BoardInfos[dev->minor].i_Offset = 192;

   break;
  default:
   printk("\nError in module selection\n");
   i_err++;
  }
 }
 if (i_err) {
  i_APCI3200_Reset(dev);
  return -EINVAL;
 }

 if (s_BoardInfos[dev->minor].i_ScanType != 1) {



  s_BoardInfos[dev->minor].i_Count = 0;
  s_BoardInfos[dev->minor].i_Sum = 0;

 }

 ul_Config =
  data[1] | (data[2] << 6) | (data[5] << 7) | (data[3] << 8) |
  (data[4] << 9);


 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;






 outl(0 | ui_ChannelNo,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 0x4);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;






 outl(0, devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 0x0);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;







 outl(ul_Config,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 0x0);







 ul_Temp = inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;




 outl((ul_Temp & 0xFFF9FFFF),
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);


 if (data[9] == 1) {
  devpriv->tsk_Current = current;


  s_BoardInfos[dev->minor].i_InterruptFlag = 1;

 }
 else {


  s_BoardInfos[dev->minor].i_InterruptFlag = 0;

 }



 s_BoardInfos[dev->minor].i_Initialised = 1;




 if (s_BoardInfos[dev->minor].i_ScanType == 1)

 {


  s_BoardInfos[dev->minor].i_Sum =
   s_BoardInfos[dev->minor].i_Sum + 1;


  insn->unused[0] = 0;
  i_APCI3200_ReadAnalogInput(dev, s, insn, &ui_Dummy);
 }

 return insn->n;
}
