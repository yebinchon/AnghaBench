
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int v4l2_dev; } ;
struct cx23885_dev {unsigned long ir_tx_notifications; int ir_tx_work; struct v4l2_subdev* sd_cx25840; } ;


 int CX23885_IR_TX_FIFO_SERVICE_REQ ;
 int V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ ;
 int cx23885_ir_tx_work_handler (int *) ;
 int schedule_work (int *) ;
 int set_bit (int ,unsigned long*) ;
 struct cx23885_dev* to_cx23885 (int ) ;

void cx23885_ir_tx_v4l2_dev_notify(struct v4l2_subdev *sd, u32 events)
{
 struct cx23885_dev *dev = to_cx23885(sd->v4l2_dev);
 unsigned long *notifications = &dev->ir_tx_notifications;

 if (events & V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ)
  set_bit(CX23885_IR_TX_FIFO_SERVICE_REQ, notifications);





 if (sd == dev->sd_cx25840)
  cx23885_ir_tx_work_handler(&dev->ir_tx_work);
 else
  schedule_work(&dev->ir_tx_work);
}
