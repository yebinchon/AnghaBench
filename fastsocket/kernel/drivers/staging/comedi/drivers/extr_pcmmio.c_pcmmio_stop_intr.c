
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_12__ {TYPE_4__* asics; } ;
struct TYPE_8__ {int asic; int num_asic_chans; int asic_chan; scalar_t__ active; scalar_t__ enabled_mask; } ;
struct TYPE_9__ {TYPE_2__ intr; } ;
struct TYPE_11__ {TYPE_3__ dio; } ;
struct TYPE_10__ {scalar_t__ iobase; } ;
struct TYPE_7__ {scalar_t__ inttrig; } ;


 int CHANS_PER_PORT ;
 int PAGE_ENAB ;
 scalar_t__ REG_ENAB0 ;
 TYPE_6__* devpriv ;
 int outb (int ,scalar_t__) ;
 TYPE_5__* subpriv ;
 int switch_page (struct comedi_device*,int,int ) ;

__attribute__((used)) static void pcmmio_stop_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 int nports, firstport, asic, port;

 asic = subpriv->dio.intr.asic;
 if (asic < 0)
  return;

 subpriv->dio.intr.enabled_mask = 0;
 subpriv->dio.intr.active = 0;
 s->async->inttrig = 0;
 nports = subpriv->dio.intr.num_asic_chans / CHANS_PER_PORT;
 firstport = subpriv->dio.intr.asic_chan / CHANS_PER_PORT;
 switch_page(dev, asic, PAGE_ENAB);
 for (port = firstport; port < firstport + nports; ++port) {

  outb(0, devpriv->asics[asic].iobase + REG_ENAB0 + port);
 }
}
