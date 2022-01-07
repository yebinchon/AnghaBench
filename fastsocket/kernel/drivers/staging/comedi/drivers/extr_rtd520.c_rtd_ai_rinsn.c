
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
typedef int s16 ;
struct TYPE_2__ {int chanBipolar; } ;


 scalar_t__ CHAN_ARRAY_TEST (int ,int ) ;
 int DPRINTK (char*,int) ;
 int ETIMEDOUT ;
 int FS_ADC_NOT_EMPTY ;
 int RTD_ADC_TIMEOUT ;
 int RtdAdcClearFifo (struct comedi_device*) ;
 int RtdAdcConversionSource (struct comedi_device*,int ) ;
 int RtdAdcFifoGet (struct comedi_device*) ;
 int RtdAdcStart (struct comedi_device*) ;
 int RtdFifoStatus (struct comedi_device*) ;
 int WAIT_QUIETLY ;
 TYPE_1__* devpriv ;
 int rtd_load_channelgain_list (struct comedi_device*,int,int *) ;

__attribute__((used)) static int rtd_ai_rinsn(struct comedi_device *dev,
   struct comedi_subdevice *s, struct comedi_insn *insn,
   unsigned int *data)
{
 int n, ii;
 int stat;


 RtdAdcClearFifo(dev);


 rtd_load_channelgain_list(dev, 1, &insn->chanspec);


 RtdAdcConversionSource(dev, 0);


 for (n = 0; n < insn->n; n++) {
  s16 d;

  RtdAdcStart(dev);

  for (ii = 0; ii < RTD_ADC_TIMEOUT; ++ii) {
   stat = RtdFifoStatus(dev);
   if (stat & FS_ADC_NOT_EMPTY)
    break;
   WAIT_QUIETLY;
  }
  if (ii >= RTD_ADC_TIMEOUT) {
   DPRINTK
       ("rtd520: Error: ADC never finished! FifoStatus=0x%x\n",
        stat ^ 0x6666);
   return -ETIMEDOUT;
  }


  d = RtdAdcFifoGet(dev);

  d = d >> 3;
  if (CHAN_ARRAY_TEST(devpriv->chanBipolar, 0)) {
   data[n] = d + 2048;
  } else {
   data[n] = d;
  }
 }


 return n;
}
