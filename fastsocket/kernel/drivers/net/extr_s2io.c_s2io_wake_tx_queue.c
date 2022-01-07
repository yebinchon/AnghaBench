
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fifo_info {scalar_t__ queue_state; int dev; int fifo_no; } ;


 scalar_t__ FIFO_QUEUE_START ;
 scalar_t__ FIFO_QUEUE_STOP ;
 scalar_t__ __netif_subqueue_stopped (int ,int ) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int netif_wake_subqueue (int ,int ) ;

__attribute__((used)) static inline void s2io_wake_tx_queue(
 struct fifo_info *fifo, int cnt, u8 multiq)
{

 if (multiq) {
  if (cnt && __netif_subqueue_stopped(fifo->dev, fifo->fifo_no))
   netif_wake_subqueue(fifo->dev, fifo->fifo_no);
 } else if (cnt && (fifo->queue_state == FIFO_QUEUE_STOP)) {
  if (netif_queue_stopped(fifo->dev)) {
   fifo->queue_state = FIFO_QUEUE_START;
   netif_wake_queue(fifo->dev);
  }
 }
}
