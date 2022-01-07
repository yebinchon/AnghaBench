
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* aoValue; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DPRINTK (char*,int,...) ;
 int ETIMEDOUT ;
 int FS_DAC1_NOT_EMPTY ;
 int FS_DAC2_NOT_EMPTY ;
 int RTD_DAC_TIMEOUT ;
 int RtdDacFifoPut (struct comedi_device*,int,int) ;
 int RtdDacRange (struct comedi_device*,int,int) ;
 int RtdDacUpdate (struct comedi_device*,int) ;
 int RtdFifoStatus (struct comedi_device*) ;
 int WAIT_QUIETLY ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int rtd_ao_winsn(struct comedi_device *dev,
   struct comedi_subdevice *s, struct comedi_insn *insn,
   unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 int range = CR_RANGE(insn->chanspec);


 RtdDacRange(dev, chan, range);



 for (i = 0; i < insn->n; ++i) {
  int val = data[i] << 3;
  int stat = 0;
  int ii;



  if ((range > 1)
      &&(data[i] < 2048)) {

   val = (((int)data[i]) - 2048) << 3;
  } else {
   val = data[i] << 3;
  }

  DPRINTK
      ("comedi: rtd520 DAC chan=%d range=%d writing %d as 0x%x\n",
       chan, range, data[i], val);


  RtdDacFifoPut(dev, chan, val);
  RtdDacUpdate(dev, chan);

  devpriv->aoValue[chan] = data[i];

  for (ii = 0; ii < RTD_DAC_TIMEOUT; ++ii) {
   stat = RtdFifoStatus(dev);

   if (stat & ((0 == chan) ? FS_DAC1_NOT_EMPTY :
        FS_DAC2_NOT_EMPTY))
    break;
   WAIT_QUIETLY;
  }
  if (ii >= RTD_DAC_TIMEOUT) {
   DPRINTK
       ("rtd520: Error: DAC never finished! FifoStatus=0x%x\n",
        stat ^ 0x6666);
   return -ETIMEDOUT;
  }
 }


 return i;
}
