
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int ui_EocEosConversionTime; unsigned char b_EocEosConversionTimeBase; unsigned char b_SingelDiff; int b_AiInitialisation; scalar_t__ dw_AiBase; TYPE_1__* ps_BoardInfo; } ;
struct TYPE_3__ {int b_AvailableConvertUnit; unsigned int ui_MinAcquisitiontimeNs; scalar_t__ i_NbrAiChannel; scalar_t__ i_NbrAiChannelDiff; } ;


 unsigned char APCI3XXX_DIFF ;
 unsigned char APCI3XXX_SINGLE ;
 TYPE_2__* devpriv ;
 scalar_t__ i_APCI3XXX_TestConversionStarted (struct comedi_device*) ;
 int printk (char*) ;
 int writel (unsigned int,void*) ;

int i_APCI3XXX_AnalogInputConfigOperatingMode(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_TimeBase = 0;
 unsigned char b_SingleDiff = 0;
 unsigned int dw_ReloadValue = 0;
 unsigned int dw_TestReloadValue = 0;





 if (insn->n == 4) {




  b_SingleDiff = (unsigned char) data[1];





  b_TimeBase = (unsigned char) data[2];





  dw_ReloadValue = (unsigned int) data[3];





  if ((devpriv->ps_BoardInfo->
    b_AvailableConvertUnit & (1 << b_TimeBase)) !=
   0) {




   if ((dw_ReloadValue >= 0) && (dw_ReloadValue <= 65535)) {
    dw_TestReloadValue = dw_ReloadValue;

    if (b_TimeBase == 1) {
     dw_TestReloadValue =
      dw_TestReloadValue * 1000UL;
    }
    if (b_TimeBase == 2) {
     dw_TestReloadValue =
      dw_TestReloadValue * 1000000UL;
    }





    if (dw_TestReloadValue >=
     devpriv->ps_BoardInfo->
     ui_MinAcquisitiontimeNs) {
     if ((b_SingleDiff == APCI3XXX_SINGLE)
      || (b_SingleDiff ==
       APCI3XXX_DIFF)) {
      if (((b_SingleDiff == APCI3XXX_SINGLE) && (devpriv->ps_BoardInfo->i_NbrAiChannel == 0)) || ((b_SingleDiff == APCI3XXX_DIFF) && (devpriv->ps_BoardInfo->i_NbrAiChannelDiff == 0))) {




       printk("Single/Diff selection error\n");
       i_ReturnValue = -1;
      } else {




       if (i_APCI3XXX_TestConversionStarted(dev) == 0) {
        devpriv->
         ui_EocEosConversionTime
         =
         (unsigned int)
         dw_ReloadValue;
        devpriv->
         b_EocEosConversionTimeBase
         =
         b_TimeBase;
        devpriv->
         b_SingelDiff
         =
         b_SingleDiff;
        devpriv->
         b_AiInitialisation
         = 1;





        writel((unsigned int)
         b_TimeBase,
         (void *)
         (devpriv->
          dw_AiBase
          +
          36));





        writel(dw_ReloadValue, (void *)(devpriv->dw_AiBase + 32));
       } else {




        printk("Any conversion started\n");
        i_ReturnValue =
         -10;
       }
      }
     } else {




      printk("Single/Diff selection error\n");
      i_ReturnValue = -1;
     }
    } else {




     printk("Convert time value selection error\n");
     i_ReturnValue = -3;
    }
   } else {




    printk("Convert time value selection error\n");
    i_ReturnValue = -3;
   }
  } else {




   printk("Convert time base unity selection error\n");
   i_ReturnValue = -2;
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
