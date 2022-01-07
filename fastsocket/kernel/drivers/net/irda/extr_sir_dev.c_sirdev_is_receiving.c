
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct sir_dev {TYPE_1__ rx_buff; int enable_rx; } ;


 scalar_t__ OUTSIDE_FRAME ;
 int atomic_read (int *) ;

__attribute__((used)) static int sirdev_is_receiving(struct sir_dev *dev)
{
 if (!atomic_read(&dev->enable_rx))
  return 0;

 return (dev->rx_buff.state != OUTSIDE_FRAME);
}
