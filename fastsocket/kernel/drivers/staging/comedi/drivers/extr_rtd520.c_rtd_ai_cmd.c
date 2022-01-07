
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int irq; } ;
struct comedi_cmd {int chanlist_len; int scan_begin_src; int flags; int scan_begin_arg; int stop_src; int stop_arg; int convert_src; int convert_arg; int chanlist; } ;
struct TYPE_6__ {int flags; int fifoLen; int transCount; int aiCount; int intMask; TYPE_2__* dma0Chain; scalar_t__ dma0Offset; scalar_t__ intCount; } ;
struct TYPE_5__ {int next; } ;
struct TYPE_4__ {struct comedi_cmd cmd; } ;


 int DMA0_ACTIVE ;
 int DMAS_ADFIFO_HALF_FULL ;
 int DMA_CHAIN_COUNT ;
 int DMA_MODE_BITS ;
 int DPRINTK (char*,...) ;
 int ENXIO ;
 int ICS_DMA0_A ;
 int ICS_DMA0_E ;
 int IRQM_ADC_ABOUT_CNT ;
 int PLX_CLEAR_DMA_INTR_BIT ;
 int PLX_DMA_EN_BIT ;
 int PLX_DMA_START_BIT ;
 int RtdAboutCounter (struct comedi_device*,int) ;
 int RtdAboutStopEnable (struct comedi_device*,int) ;
 int RtdAdcClearFifo (struct comedi_device*) ;
 int RtdAdcConversionSource (struct comedi_device*,int) ;
 int RtdBurstCounter (struct comedi_device*,int) ;
 int RtdBurstStartSource (struct comedi_device*,int) ;
 int RtdDma0Control (struct comedi_device*,int) ;
 int RtdDma0Mode (struct comedi_device*,int ) ;
 int RtdDma0Next (struct comedi_device*,int ) ;
 int RtdDma0Reset (struct comedi_device*) ;
 int RtdDma0Source (struct comedi_device*,int ) ;
 int RtdInterruptClear (struct comedi_device*) ;
 int RtdInterruptClearMask (struct comedi_device*,int ) ;
 int RtdInterruptMask (struct comedi_device*,int ) ;
 int RtdInterruptOverrunClear (struct comedi_device*) ;
 int RtdPacerClockSource (struct comedi_device*,int) ;
 int RtdPacerCounter (struct comedi_device*,int) ;
 int RtdPacerStart (struct comedi_device*) ;
 int RtdPacerStartSource (struct comedi_device*,int) ;
 int RtdPacerStop (struct comedi_device*) ;
 int RtdPacerStopSource (struct comedi_device*,int ) ;
 int RtdPlxInterruptRead (struct comedi_device*) ;
 int RtdPlxInterruptWrite (struct comedi_device*,int) ;
 int SEND_EOS ;
 int TRANS_TARGET_PERIOD ;



 int TRIG_ROUND_NEAREST ;

 int TRIG_WAKE_EOS ;
 int abort_dma (struct comedi_device*,int ) ;
 TYPE_3__* devpriv ;
 int rtd_load_channelgain_list (struct comedi_device*,int,int ) ;
 int rtd_ns_to_timer (int*,int ) ;

__attribute__((used)) static int rtd_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 int timer;


 RtdPacerStopSource(dev, 0);
 RtdPacerStop(dev);
 RtdAdcConversionSource(dev, 0);
 RtdInterruptMask(dev, 0);
 RtdAdcClearFifo(dev);
 RtdInterruptOverrunClear(dev);
 devpriv->intCount = 0;

 if (!dev->irq) {
  DPRINTK("rtd520: ERROR! No interrupt available!\n");
  return -ENXIO;
 }



 rtd_load_channelgain_list(dev, cmd->chanlist_len, cmd->chanlist);


 if (cmd->chanlist_len > 1) {

  RtdPacerStartSource(dev, 0);
  RtdBurstStartSource(dev, 1);
  RtdAdcConversionSource(dev, 2);
 } else {

  RtdPacerStartSource(dev, 0);
  RtdAdcConversionSource(dev, 1);
 }
 RtdAboutCounter(dev, devpriv->fifoLen / 2 - 1);

 if (128 == cmd->scan_begin_src) {


  if (cmd->flags & TRIG_WAKE_EOS) {


   devpriv->transCount = cmd->chanlist_len;
   devpriv->flags |= SEND_EOS;
  } else {

   devpriv->transCount
       =
       (TRANS_TARGET_PERIOD * cmd->chanlist_len) /
       cmd->scan_begin_arg;
   if (devpriv->transCount < cmd->chanlist_len) {

    devpriv->transCount = cmd->chanlist_len;
   } else {
    devpriv->transCount =
        (devpriv->transCount +
         cmd->chanlist_len - 1)
        / cmd->chanlist_len;
    devpriv->transCount *= cmd->chanlist_len;
   }
   devpriv->flags |= SEND_EOS;
  }
  if (devpriv->transCount >= (devpriv->fifoLen / 2)) {

   devpriv->transCount = 0;
   devpriv->flags &= ~SEND_EOS;
  } else {

   RtdAboutCounter(dev, devpriv->transCount - 1);
  }

  DPRINTK
      ("rtd520: scanLen=%d tranferCount=%d fifoLen=%d\n  scanTime(ns)=%d flags=0x%x\n",
       cmd->chanlist_len, devpriv->transCount, devpriv->fifoLen,
       cmd->scan_begin_arg, devpriv->flags);
 } else {
  devpriv->transCount = 0;
  devpriv->flags &= ~SEND_EOS;
 }
 RtdPacerClockSource(dev, 1);
 RtdAboutStopEnable(dev, 1);




 switch (cmd->stop_src) {
 case 131:
  devpriv->aiCount = cmd->stop_arg * cmd->chanlist_len;
  if ((devpriv->transCount > 0)
      && (devpriv->transCount > devpriv->aiCount)) {
   devpriv->transCount = devpriv->aiCount;
  }
  break;

 case 129:
  devpriv->aiCount = -1;
  break;

 default:
  DPRINTK("rtd520: Warning! ignoring stop_src mode %d\n",
   cmd->stop_src);
 }


 switch (cmd->scan_begin_src) {
 case 128:
  timer = rtd_ns_to_timer(&cmd->scan_begin_arg,
     TRIG_ROUND_NEAREST);


  RtdPacerCounter(dev, timer);

  break;

 case 130:
  RtdPacerStartSource(dev, 1);
  break;

 default:
  DPRINTK("rtd520: Warning! ignoring scan_begin_src mode %d\n",
   cmd->scan_begin_src);
 }


 switch (cmd->convert_src) {
 case 128:
  if (cmd->chanlist_len > 1) {
   timer = rtd_ns_to_timer(&cmd->convert_arg,
      TRIG_ROUND_NEAREST);


   RtdBurstCounter(dev, timer);
  }

  break;

 case 130:
  RtdBurstStartSource(dev, 2);
  break;

 default:
  DPRINTK("rtd520: Warning! ignoring convert_src mode %d\n",
   cmd->convert_src);
 }




 RtdInterruptClearMask(dev, ~0);
 RtdInterruptClear(dev);


 if (devpriv->transCount > 0) {
  RtdInterruptMask(dev, IRQM_ADC_ABOUT_CNT);
  DPRINTK("rtd520: Transferring every %d\n", devpriv->transCount);
 } else {
  RtdInterruptMask(dev, IRQM_ADC_ABOUT_CNT);
  DPRINTK("rtd520: Transferring every 1/2 FIFO\n");

 }



 RtdPacerStart(dev);
 return 0;
}
