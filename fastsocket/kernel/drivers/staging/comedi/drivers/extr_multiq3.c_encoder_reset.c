
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; TYPE_1__* subdevices; } ;
struct TYPE_2__ {int n_chan; } ;


 int MULTIQ3_AD_MUX_EN ;
 int MULTIQ3_BP_RESET ;
 int MULTIQ3_CLOCK_DATA ;
 int MULTIQ3_CLOCK_SETUP ;
 int MULTIQ3_CNTR_RESET ;
 scalar_t__ MULTIQ3_CONTROL ;
 int MULTIQ3_CONTROL_MUST ;
 int MULTIQ3_EFLAG_RESET ;
 scalar_t__ MULTIQ3_ENC_CONTROL ;
 scalar_t__ MULTIQ3_ENC_DATA ;
 int MULTIQ3_INPUT_SETUP ;
 int MULTIQ3_QUAD_X4 ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void encoder_reset(struct comedi_device *dev)
{
 int chan;
 for (chan = 0; chan < dev->subdevices[4].n_chan; chan++) {
  int control =
      MULTIQ3_CONTROL_MUST | MULTIQ3_AD_MUX_EN | (chan << 3);
  outw(control, dev->iobase + MULTIQ3_CONTROL);
  outb(MULTIQ3_EFLAG_RESET, dev->iobase + MULTIQ3_ENC_CONTROL);
  outb(MULTIQ3_BP_RESET, dev->iobase + MULTIQ3_ENC_CONTROL);
  outb(MULTIQ3_CLOCK_DATA, dev->iobase + MULTIQ3_ENC_DATA);
  outb(MULTIQ3_CLOCK_SETUP, dev->iobase + MULTIQ3_ENC_CONTROL);
  outb(MULTIQ3_INPUT_SETUP, dev->iobase + MULTIQ3_ENC_CONTROL);
  outb(MULTIQ3_QUAD_X4, dev->iobase + MULTIQ3_ENC_CONTROL);
  outb(MULTIQ3_CNTR_RESET, dev->iobase + MULTIQ3_ENC_CONTROL);
 }
}
