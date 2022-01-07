
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int irq; int initializing; int tx_ready; unsigned short last_memtx_serial; int setup_timer; int work_rx; int tasklet; int lock; int rx_pool; int rx_queue; int * tx_queue; scalar_t__ rx_pool_size; scalar_t__ rx_bytes_queued; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NL_NUM_OF_PRIORITIES ;
 int ipw_receive_data_work ;
 int ipwireless_do_tasklet ;
 int ipwireless_setup_timer ;
 struct ipw_hardware* kzalloc (int,int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

struct ipw_hardware *ipwireless_hardware_create(void)
{
 int i;
 struct ipw_hardware *hw =
  kzalloc(sizeof(struct ipw_hardware), GFP_KERNEL);

 if (!hw)
  return ((void*)0);

 hw->irq = -1;
 hw->initializing = 1;
 hw->tx_ready = 1;
 hw->rx_bytes_queued = 0;
 hw->rx_pool_size = 0;
 hw->last_memtx_serial = (unsigned short) 0xffff;
 for (i = 0; i < NL_NUM_OF_PRIORITIES; i++)
  INIT_LIST_HEAD(&hw->tx_queue[i]);

 INIT_LIST_HEAD(&hw->rx_queue);
 INIT_LIST_HEAD(&hw->rx_pool);
 spin_lock_init(&hw->lock);
 tasklet_init(&hw->tasklet, ipwireless_do_tasklet, (unsigned long) hw);
 INIT_WORK(&hw->work_rx, ipw_receive_data_work);
 setup_timer(&hw->setup_timer, ipwireless_setup_timer,
   (unsigned long) hw);

 return hw;
}
