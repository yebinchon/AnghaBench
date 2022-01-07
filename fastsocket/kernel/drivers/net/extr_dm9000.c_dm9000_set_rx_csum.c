
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int lock; scalar_t__ rx_csum; scalar_t__ can_csum; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_RCSR ;
 int EOPNOTSUPP ;
 int RCSR_CSUM ;
 int iow (TYPE_1__*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_rx_csum(struct net_device *dev, uint32_t data)
{
 board_info_t *dm = to_dm9000_board(dev);
 unsigned long flags;

 if (dm->can_csum) {
  dm->rx_csum = data;

  spin_lock_irqsave(&dm->lock, flags);
  iow(dm, DM9000_RCSR, dm->rx_csum ? RCSR_CSUM : 0);
  spin_unlock_irqrestore(&dm->lock, flags);

  return 0;
 }

 return -EOPNOTSUPP;
}
