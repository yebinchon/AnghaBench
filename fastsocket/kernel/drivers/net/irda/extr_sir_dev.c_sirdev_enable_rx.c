
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int in_frame; scalar_t__ len; int head; int data; } ;
struct sir_dev {int enable_rx; TYPE_1__ rx_buff; } ;


 int FALSE ;
 int OUTSIDE_FRAME ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ unlikely (int ) ;

void sirdev_enable_rx(struct sir_dev *dev)
{
 if (unlikely(atomic_read(&dev->enable_rx)))
  return;


 dev->rx_buff.data = dev->rx_buff.head;
 dev->rx_buff.len = 0;
 dev->rx_buff.in_frame = FALSE;
 dev->rx_buff.state = OUTSIDE_FRAME;
 atomic_set(&dev->enable_rx, 1);
}
