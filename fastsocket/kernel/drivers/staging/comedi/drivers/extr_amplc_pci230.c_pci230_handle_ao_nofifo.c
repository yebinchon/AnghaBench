
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ ao_scan_count; int ao_continuous; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_EOS ;
 int COMEDI_CB_OVERFLOW ;
 int CR_CHAN (int ) ;
 int comedi_buf_get (struct comedi_async*,short*) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int pci230_ao_stop (struct comedi_device*,struct comedi_subdevice*) ;
 int pci230_ao_write_nofifo (struct comedi_device*,short,int ) ;

__attribute__((used)) static void pci230_handle_ao_nofifo(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 short data;
 int i, ret;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;

 if (!devpriv->ao_continuous && (devpriv->ao_scan_count == 0)) {
  return;
 }

 for (i = 0; i < cmd->chanlist_len; i++) {

  ret = comedi_buf_get(s->async, &data);
  if (ret == 0) {
   s->async->events |= COMEDI_CB_OVERFLOW;
   pci230_ao_stop(dev, s);
   comedi_error(dev, "AO buffer underrun");
   return;
  }

  pci230_ao_write_nofifo(dev, data, CR_CHAN(cmd->chanlist[i]));
 }

 async->events |= COMEDI_CB_BLOCK | COMEDI_CB_EOS;
 if (!devpriv->ao_continuous) {
  devpriv->ao_scan_count--;
  if (devpriv->ao_scan_count == 0) {

   async->events |= COMEDI_CB_EOA;
   pci230_ao_stop(dev, s);
  }
 }
}
