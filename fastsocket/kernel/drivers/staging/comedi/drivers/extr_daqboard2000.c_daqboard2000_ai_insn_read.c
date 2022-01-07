
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daqboard2000_hw {int acqControl; int acqPacerClockDivLow; unsigned int acqResultsFIFO; scalar_t__ acqPacerClockDivHigh; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {struct daqboard2000_hw* daq; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DAQBOARD2000_AcqConfigPipeFull ;
 int DAQBOARD2000_AcqLogicScanning ;
 int DAQBOARD2000_AcqResetConfigPipe ;
 int DAQBOARD2000_AcqResetResultsFifo ;
 int DAQBOARD2000_AcqResetScanListFifo ;
 int DAQBOARD2000_AcqResultsFIFOHasValidData ;
 int DAQBOARD2000_AdcPacerDisable ;
 int DAQBOARD2000_AdcPacerEnable ;
 int DAQBOARD2000_SeqStartScanList ;
 int DAQBOARD2000_SeqStopScanList ;
 TYPE_1__* devpriv ;
 int setup_sampling (struct comedi_device*,int,int) ;

__attribute__((used)) static int daqboard2000_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 int i;
 struct daqboard2000_hw *fpga = devpriv->daq;
 int gain, chan, timeout;

 fpga->acqControl =
     DAQBOARD2000_AcqResetScanListFifo |
     DAQBOARD2000_AcqResetResultsFifo | DAQBOARD2000_AcqResetConfigPipe;



 fpga->acqPacerClockDivLow = 1000000;
 fpga->acqPacerClockDivHigh = 0;

 gain = CR_RANGE(insn->chanspec);
 chan = CR_CHAN(insn->chanspec);





 for (i = 0; i < insn->n; i++) {
  setup_sampling(dev, chan, gain);

  fpga->acqControl = DAQBOARD2000_SeqStartScanList;
  for (timeout = 0; timeout < 20; timeout++) {
   if (fpga->acqControl & DAQBOARD2000_AcqConfigPipeFull) {
    break;
   }

  }
  fpga->acqControl = DAQBOARD2000_AdcPacerEnable;
  for (timeout = 0; timeout < 20; timeout++) {
   if (fpga->acqControl & DAQBOARD2000_AcqLogicScanning) {
    break;
   }

  }
  for (timeout = 0; timeout < 20; timeout++) {
   if (fpga->acqControl &
       DAQBOARD2000_AcqResultsFIFOHasValidData) {
    break;
   }

  }
  data[i] = fpga->acqResultsFIFO;
  fpga->acqControl = DAQBOARD2000_AdcPacerDisable;
  fpga->acqControl = DAQBOARD2000_SeqStopScanList;
 }

 return i;
}
