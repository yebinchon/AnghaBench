
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_3__* async; } ;
struct comedi_device {scalar_t__ iobase; int minor; } ;
struct TYPE_6__ {int cur_chan; int events; } ;
struct TYPE_5__ {int* act_chanlist; int ai_n_chan; int ai_act_scan; } ;
struct TYPE_4__ {scalar_t__ cardtype; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DPRINTK (char*,...) ;
 scalar_t__ PCI171x_AD_DATA ;
 scalar_t__ TYPE_PCI1713 ;
 int comedi_buf_put (TYPE_3__*,int) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_2__* devpriv ;
 int inw (scalar_t__) ;
 int pci171x_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int printk (char*,int ,int,int,int,int,int ,int,int,int) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int move_block_from_fifo(struct comedi_device *dev,
    struct comedi_subdevice *s, int n, int turn)
{
 int i, j;



 DPRINTK("adv_pci1710 EDBG: BGN: move_block_from_fifo(...,%d,%d)\n", n,
  turn);
 j = s->async->cur_chan;
 for (i = 0; i < n; i++) {
  comedi_buf_put(s->async,
          inw(dev->iobase + PCI171x_AD_DATA) & 0x0fff);

  j++;
  if (j >= devpriv->ai_n_chan) {
   j = 0;
   devpriv->ai_act_scan++;
  }
 }
 DPRINTK("adv_pci1710 EDBG: END: move_block_from_fifo(...)\n");
 return 0;
}
