
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_6__ {scalar_t__ neverending_ai; scalar_t__ ai_buf_ptr; scalar_t__ ai_act_scan; scalar_t__ ai_do; int CntrlReg; } ;
struct TYPE_5__ {int cardtype; } ;
struct TYPE_4__ {scalar_t__ cur_chan; } ;


 int Control_CNT0 ;
 int Control_SW ;
 int DPRINTK (char*) ;
 scalar_t__ PCI171x_CLRFIFO ;
 scalar_t__ PCI171x_CLRINT ;
 scalar_t__ PCI171x_CONTROL ;
 TYPE_3__* devpriv ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;
 TYPE_2__* this_board ;

__attribute__((used)) static int pci171x_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 DPRINTK("adv_pci1710 EDBG: BGN: pci171x_ai_cancel(...)\n");

 switch (this_board->cardtype) {
 default:
  devpriv->CntrlReg &= Control_CNT0;
  devpriv->CntrlReg |= Control_SW;

  outw(devpriv->CntrlReg, dev->iobase + PCI171x_CONTROL);
  start_pacer(dev, -1, 0, 0);
  outb(0, dev->iobase + PCI171x_CLRFIFO);
  outb(0, dev->iobase + PCI171x_CLRINT);
  break;
 }

 devpriv->ai_do = 0;
 devpriv->ai_act_scan = 0;
 s->async->cur_chan = 0;
 devpriv->ai_buf_ptr = 0;
 devpriv->neverending_ai = 0;

 DPRINTK("adv_pci1710 EDBG: END: pci171x_ai_cancel(...)\n");
 return 0;
}
