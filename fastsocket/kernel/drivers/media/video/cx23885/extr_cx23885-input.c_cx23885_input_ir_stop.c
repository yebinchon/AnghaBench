
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_ir_parameters {int shutdown; int enable; int interrupt_enable; } ;
struct cx23885_dev {int * sd_ir; int ir_input_stopping; } ;


 int atomic_set (int *,int) ;
 int flush_scheduled_work () ;
 int ir ;
 int rx_g_parameters ;
 int rx_s_parameters ;
 int v4l2_subdev_call (int *,int ,int ,struct v4l2_subdev_ir_parameters*) ;

__attribute__((used)) static void cx23885_input_ir_stop(struct cx23885_dev *dev)
{
 struct v4l2_subdev_ir_parameters params;

 if (dev->sd_ir == ((void*)0))
  return;
 atomic_set(&dev->ir_input_stopping, 1);
 v4l2_subdev_call(dev->sd_ir, ir, rx_g_parameters, &params);
 while (params.shutdown == 0) {
  params.enable = 0;
  params.interrupt_enable = 0;
  params.shutdown = 1;
  v4l2_subdev_call(dev->sd_ir, ir, rx_s_parameters, &params);
  v4l2_subdev_call(dev->sd_ir, ir, rx_g_parameters, &params);
 }

 flush_scheduled_work();
}
