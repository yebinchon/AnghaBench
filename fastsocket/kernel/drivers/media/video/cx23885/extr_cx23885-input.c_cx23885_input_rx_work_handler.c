
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_ir_parameters {int enable; void* shutdown; } ;
struct cx23885_dev {int board; int * sd_ir; int ir_input_stopping; } ;






 int V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED ;
 int V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ ;
 int V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN ;
 int V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN ;
 void* atomic_read (int *) ;
 int cx23885_input_process_measurements (struct cx23885_dev*,int) ;
 int ir ;
 int rx_g_parameters ;
 int rx_s_parameters ;
 int v4l2_subdev_call (int *,int ,int ,struct v4l2_subdev_ir_parameters*) ;

void cx23885_input_rx_work_handler(struct cx23885_dev *dev, u32 events)
{
 struct v4l2_subdev_ir_parameters params;
 int overrun, data_available;

 if (dev->sd_ir == ((void*)0) || events == 0)
  return;

 switch (dev->board) {
 case 129:
 case 130:
 case 128:
 case 131:




  break;
 default:
  return;
 }

 overrun = events & (V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN |
       V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN);

 data_available = events & (V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED |
       V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ);

 if (overrun) {

  v4l2_subdev_call(dev->sd_ir, ir, rx_g_parameters, &params);
  params.enable = 0;

  params.shutdown = atomic_read(&dev->ir_input_stopping);
  v4l2_subdev_call(dev->sd_ir, ir, rx_s_parameters, &params);
 }

 if (data_available)
  cx23885_input_process_measurements(dev, overrun);

 if (overrun) {

  params.enable = 1;

  params.shutdown = atomic_read(&dev->ir_input_stopping);
  v4l2_subdev_call(dev->sd_ir, ir, rx_s_parameters, &params);
 }
}
