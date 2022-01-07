
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int flags; int intCount; scalar_t__ aiCount; } ;


 int DMA0_ACTIVE ;
 int DPRINTK (char*,int ,int ,int) ;
 int ICS_DMA0_E ;
 int RtdAdcConversionSource (struct comedi_device*,int ) ;
 int RtdInterruptMask (struct comedi_device*,int ) ;
 int RtdInterruptOverrunStatus (struct comedi_device*) ;
 int RtdInterruptStatus (struct comedi_device*) ;
 int RtdPacerStop (struct comedi_device*) ;
 int RtdPacerStopSource (struct comedi_device*,int ) ;
 int RtdPlxInterruptRead (struct comedi_device*) ;
 int RtdPlxInterruptWrite (struct comedi_device*,int) ;
 int abort_dma (struct comedi_device*,int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int rtd_ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 u16 status;

 RtdPacerStopSource(dev, 0);
 RtdPacerStop(dev);
 RtdAdcConversionSource(dev, 0);
 RtdInterruptMask(dev, 0);
 devpriv->aiCount = 0;
 status = RtdInterruptStatus(dev);
 DPRINTK
     ("rtd520: Acquisition canceled. %ld ints, intStat=%x, overStat=%x\n",
      devpriv->intCount, status,
      0xffff & RtdInterruptOverrunStatus(dev));
 return 0;
}
