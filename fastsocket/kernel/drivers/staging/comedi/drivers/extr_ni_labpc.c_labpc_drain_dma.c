
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; } ;
struct TYPE_3__ {scalar_t__ stop_src; } ;
struct comedi_async {int events; TYPE_1__ cmd; } ;
struct TYPE_4__ {int status1_bits; unsigned int dma_transfer_size; unsigned int count; int dma_chan; int * dma_buffer; } ;


 int COMEDI_CB_BLOCK ;
 scalar_t__ TRIG_COUNT ;
 int cfc_write_to_buffer (struct comedi_subdevice*,int ) ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 TYPE_2__* devpriv ;
 int disable_dma (int ) ;
 unsigned int get_dma_residue (int ) ;
 int release_dma_lock (unsigned long) ;
 unsigned int sample_size ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,unsigned int) ;
 int virt_to_bus (int *) ;

__attribute__((used)) static void labpc_drain_dma(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 int status;
 unsigned long flags;
 unsigned int max_points, num_points, residue, leftover;
 int i;

 status = devpriv->status1_bits;

 flags = claim_dma_lock();
 disable_dma(devpriv->dma_chan);


 clear_dma_ff(devpriv->dma_chan);


 max_points = devpriv->dma_transfer_size / sample_size;




 residue = get_dma_residue(devpriv->dma_chan) / sample_size;
 num_points = max_points - residue;
 if (devpriv->count < num_points && async->cmd.stop_src == TRIG_COUNT)
  num_points = devpriv->count;


 leftover = 0;
 if (async->cmd.stop_src != TRIG_COUNT) {
  leftover = devpriv->dma_transfer_size / sample_size;
 } else if (devpriv->count > num_points) {
  leftover = devpriv->count - num_points;
  if (leftover > max_points)
   leftover = max_points;
 }


 for (i = 0; i < num_points; i++) {
  cfc_write_to_buffer(s, devpriv->dma_buffer[i]);
 }
 if (async->cmd.stop_src == TRIG_COUNT)
  devpriv->count -= num_points;


 set_dma_addr(devpriv->dma_chan, virt_to_bus(devpriv->dma_buffer));
 set_dma_count(devpriv->dma_chan, leftover * sample_size);
 release_dma_lock(flags);

 async->events |= COMEDI_CB_BLOCK;
}
