
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int dma_maxsize; TYPE_2__* dma; } ;
struct TYPE_5__ {int buf; } ;
struct TYPE_4__ {int * inttrig; } ;


 int DT2821_STRIG ;
 int EINVAL ;
 int EPIPE ;
 int cfc_read_array_from_buffer (struct comedi_subdevice*,int ,int ) ;
 TYPE_3__* devpriv ;
 int prep_ao_dma (struct comedi_device*,int,int) ;
 int printk (char*) ;
 int update_supcsr (int ) ;

__attribute__((used)) static int dt282x_ao_inttrig(struct comedi_device *dev,
        struct comedi_subdevice *s, unsigned int x)
{
 int size;

 if (x != 0)
  return -EINVAL;

 size = cfc_read_array_from_buffer(s, devpriv->dma[0].buf,
       devpriv->dma_maxsize);
 if (size == 0) {
  printk("dt282x: AO underrun\n");
  return -EPIPE;
 }
 prep_ao_dma(dev, 0, size);

 size = cfc_read_array_from_buffer(s, devpriv->dma[1].buf,
       devpriv->dma_maxsize);
 if (size == 0) {
  printk("dt282x: AO underrun\n");
  return -EPIPE;
 }
 prep_ao_dma(dev, 1, size);

 update_supcsr(DT2821_STRIG);
 s->async->inttrig = ((void*)0);

 return 1;
}
