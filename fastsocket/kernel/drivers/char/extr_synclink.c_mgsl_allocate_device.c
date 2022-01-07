
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int close_delay; int closing_wait; int * ops; } ;
struct mgsl_struct {int max_frame_size; int num_tx_dma_buffers; scalar_t__ num_tx_holding_buffers; int idle_mode; int params; int netlock; int irq_spinlock; int event_wait_q; int status_event_wait_q; TYPE_1__ port; int task; int magic; } ;
typedef int MGSL_PARAMS ;


 int GFP_KERNEL ;
 int HDLC_TXIDLE_FLAGS ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int MGSL_MAGIC ;
 int default_params ;
 int init_waitqueue_head (int *) ;
 struct mgsl_struct* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mgsl_bh_handler ;
 int mgsl_port_ops ;
 int printk (char*) ;
 int spin_lock_init (int *) ;
 int tty_port_init (TYPE_1__*) ;

__attribute__((used)) static struct mgsl_struct* mgsl_allocate_device(void)
{
 struct mgsl_struct *info;

 info = kzalloc(sizeof(struct mgsl_struct),
   GFP_KERNEL);

 if (!info) {
  printk("Error can't allocate device instance data\n");
 } else {
  tty_port_init(&info->port);
  info->port.ops = &mgsl_port_ops;
  info->magic = MGSL_MAGIC;
  INIT_WORK(&info->task, mgsl_bh_handler);
  info->max_frame_size = 4096;
  info->port.close_delay = 5*HZ/10;
  info->port.closing_wait = 30*HZ;
  init_waitqueue_head(&info->status_event_wait_q);
  init_waitqueue_head(&info->event_wait_q);
  spin_lock_init(&info->irq_spinlock);
  spin_lock_init(&info->netlock);
  memcpy(&info->params,&default_params,sizeof(MGSL_PARAMS));
  info->idle_mode = HDLC_TXIDLE_FLAGS;
  info->num_tx_dma_buffers = 1;
  info->num_tx_holding_buffers = 0;
 }

 return info;

}
