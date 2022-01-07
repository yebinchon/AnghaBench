
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notify; } ;
struct cx23885_dev {TYPE_1__ v4l2_dev; int ir_tx_work; int ir_rx_work; int cx25840_work; } ;


 int INIT_WORK (int *,int ) ;
 int cx23885_av_work_handler ;
 int cx23885_ir_rx_work_handler ;
 int cx23885_ir_tx_work_handler ;
 int cx23885_v4l2_dev_notify ;

__attribute__((used)) static void cx23885_v4l2_dev_notify_init(struct cx23885_dev *dev)
{
 INIT_WORK(&dev->cx25840_work, cx23885_av_work_handler);
 INIT_WORK(&dev->ir_rx_work, cx23885_ir_rx_work_handler);
 INIT_WORK(&dev->ir_tx_work, cx23885_ir_tx_work_handler);
 dev->v4l2_dev.notify = cx23885_v4l2_dev_notify;
}
