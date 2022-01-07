
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_device {int channels; } ;
struct ioatdma_device {struct ioat_chan_common** idx; scalar_t__ reg_base; struct dma_device common; } ;
struct TYPE_4__ {void (* function ) (unsigned long) ;unsigned long data; } ;
struct TYPE_3__ {int device_node; struct dma_device* device; } ;
struct ioat_chan_common {int cleanup_task; TYPE_2__ timer; TYPE_1__ common; int cleanup_lock; scalar_t__ reg_base; struct ioatdma_device* device; } ;


 int init_timer (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

void ioat_init_channel(struct ioatdma_device *device,
         struct ioat_chan_common *chan, int idx,
         void (*timer_fn)(unsigned long),
         void (*tasklet)(unsigned long),
         unsigned long ioat)
{
 struct dma_device *dma = &device->common;

 chan->device = device;
 chan->reg_base = device->reg_base + (0x80 * (idx + 1));
 spin_lock_init(&chan->cleanup_lock);
 chan->common.device = dma;
 list_add_tail(&chan->common.device_node, &dma->channels);
 device->idx[idx] = chan;
 init_timer(&chan->timer);
 chan->timer.function = timer_fn;
 chan->timer.data = ioat;
 tasklet_init(&chan->cleanup_task, tasklet, ioat);
 tasklet_disable(&chan->cleanup_task);
}
