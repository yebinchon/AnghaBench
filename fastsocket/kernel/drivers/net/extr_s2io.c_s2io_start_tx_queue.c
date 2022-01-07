
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* fifos; } ;
struct TYPE_4__ {int multiq; } ;
struct s2io_nic {int dev; TYPE_3__ mac_control; TYPE_1__ config; } ;
struct TYPE_5__ {int queue_state; } ;


 int FIFO_QUEUE_START ;
 int netif_tx_start_all_queues (int ) ;

__attribute__((used)) static inline void s2io_start_tx_queue(struct s2io_nic *sp, int fifo_no)
{
 if (!sp->config.multiq)
  sp->mac_control.fifos[fifo_no].queue_state =
   FIFO_QUEUE_START;

 netif_tx_start_all_queues(sp->dev);
}
