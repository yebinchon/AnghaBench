
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_mapping_iter {int length; int addr; } ;
struct r592_device {TYPE_1__* req; int pio_fifo; } ;
struct TYPE_2__ {scalar_t__ tpc; int sg; int data_len; int data; int long_data; } ;


 scalar_t__ MS_TPC_SET_RW_REG_ADRS ;
 int SG_MITER_ATOMIC ;
 int SG_MITER_FROM_SG ;
 int SG_MITER_TO_SG ;
 int kfifo_reset (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int r592_flush_fifo_write (struct r592_device*) ;
 int r592_read_fifo_pio (struct r592_device*,int ,int ) ;
 int r592_write_fifo_pio (struct r592_device*,int ,int ) ;
 scalar_t__ sg_miter_next (struct sg_mapping_iter*) ;
 int sg_miter_start (struct sg_mapping_iter*,int *,int,int) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;

__attribute__((used)) static int r592_transfer_fifo_pio(struct r592_device *dev)
{
 unsigned long flags;

 bool is_write = dev->req->tpc >= MS_TPC_SET_RW_REG_ADRS;
 struct sg_mapping_iter miter;

 kfifo_reset(&dev->pio_fifo);

 if (!dev->req->long_data) {
  if (is_write) {
   r592_write_fifo_pio(dev, dev->req->data,
       dev->req->data_len);
   r592_flush_fifo_write(dev);
  } else
   r592_read_fifo_pio(dev, dev->req->data,
       dev->req->data_len);
  return 0;
 }

 local_irq_save(flags);
 sg_miter_start(&miter, &dev->req->sg, 1, SG_MITER_ATOMIC |
  (is_write ? SG_MITER_FROM_SG : SG_MITER_TO_SG));


 while (sg_miter_next(&miter))
  if (is_write)
   r592_write_fifo_pio(dev, miter.addr, miter.length);
  else
   r592_read_fifo_pio(dev, miter.addr, miter.length);



 if (is_write)
  r592_flush_fifo_write(dev);

 sg_miter_stop(&miter);
 local_irq_restore(flags);
 return 0;
}
