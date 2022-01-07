
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_6__ {int current_dma_index; scalar_t__ nread; int supcsr; int ntrig; TYPE_1__* dma; } ;
struct TYPE_5__ {int events; int prealloc_buf; } ;
struct TYPE_4__ {int size; int chan; void* buf; } ;


 int COMEDI_CB_EOA ;
 int DT2821_CLRDMADNE ;
 int DT2821_DDMA ;
 int cfc_write_array_to_buffer (struct comedi_subdevice*,void*,int) ;
 TYPE_3__* devpriv ;
 int disable_dma (int ) ;
 int dt282x_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int dt282x_munge (struct comedi_device*,void*,int) ;
 int prep_ai_dma (struct comedi_device*,int,int ) ;
 int printk (char*) ;
 int update_supcsr (int ) ;

__attribute__((used)) static void dt282x_ai_dma_interrupt(struct comedi_device *dev)
{
 void *ptr;
 int size;
 int i;
 int ret;
 struct comedi_subdevice *s = dev->subdevices;

 update_supcsr(DT2821_CLRDMADNE);

 if (!s->async->prealloc_buf) {
  printk("async->data disappeared.  dang!\n");
  return;
 }

 i = devpriv->current_dma_index;
 ptr = devpriv->dma[i].buf;
 size = devpriv->dma[i].size;

 disable_dma(devpriv->dma[i].chan);

 devpriv->current_dma_index = 1 - i;

 dt282x_munge(dev, ptr, size);
 ret = cfc_write_array_to_buffer(s, ptr, size);
 if (ret != size) {
  dt282x_ai_cancel(dev, s);
  return;
 }
 devpriv->nread -= size / 2;

 if (devpriv->nread < 0) {
  printk("dt282x: off by one\n");
  devpriv->nread = 0;
 }
 if (!devpriv->nread) {
  dt282x_ai_cancel(dev, s);
  s->async->events |= COMEDI_CB_EOA;
  return;
 }
 prep_ai_dma(dev, i, 0);
}
