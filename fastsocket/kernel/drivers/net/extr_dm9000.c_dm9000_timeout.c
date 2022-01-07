
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int trans_start; } ;
struct TYPE_4__ {int lock; int io_addr; } ;
typedef TYPE_1__ board_info_t ;


 int dm9000_init_dm9000 (struct net_device*) ;
 int dm9000_reset (TYPE_1__*) ;
 int jiffies ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void dm9000_timeout(struct net_device *dev)
{
 board_info_t *db = netdev_priv(dev);
 u8 reg_save;
 unsigned long flags;


 reg_save = readb(db->io_addr);
 spin_lock_irqsave(&db->lock, flags);

 netif_stop_queue(dev);
 dm9000_reset(db);
 dm9000_init_dm9000(dev);

 dev->trans_start = jiffies;
 netif_wake_queue(dev);


 writeb(reg_save, db->io_addr);
 spin_unlock_irqrestore(&db->lock, flags);
}
