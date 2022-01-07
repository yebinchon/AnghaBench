
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_7__ {int addr_lock; int lock; int io_addr; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_EPAR ;
 int DM9000_EPCR ;
 int DM9000_EPDRH ;
 int DM9000_EPDRL ;
 int DM9000_PHY ;
 int EPCR_EPOS ;
 int EPCR_ERPRR ;
 int dm9000_dbg (TYPE_1__*,int,char*,int,int) ;
 int dm9000_msleep (TYPE_1__*,int) ;
 int ior (TYPE_1__*,int ) ;
 int iow (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 unsigned int readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (unsigned int,int ) ;

__attribute__((used)) static int
dm9000_phy_read(struct net_device *dev, int phy_reg_unused, int reg)
{
 board_info_t *db = netdev_priv(dev);
 unsigned long flags;
 unsigned int reg_save;
 int ret;

 mutex_lock(&db->addr_lock);

 spin_lock_irqsave(&db->lock,flags);


 reg_save = readb(db->io_addr);


 iow(db, DM9000_EPAR, DM9000_PHY | reg);

 iow(db, DM9000_EPCR, EPCR_ERPRR | EPCR_EPOS);

 writeb(reg_save, db->io_addr);
 spin_unlock_irqrestore(&db->lock,flags);

 dm9000_msleep(db, 1);

 spin_lock_irqsave(&db->lock,flags);
 reg_save = readb(db->io_addr);

 iow(db, DM9000_EPCR, 0x0);


 ret = (ior(db, DM9000_EPDRH) << 8) | ior(db, DM9000_EPDRL);


 writeb(reg_save, db->io_addr);
 spin_unlock_irqrestore(&db->lock,flags);

 mutex_unlock(&db->addr_lock);

 dm9000_dbg(db, 5, "phy_read[%02x] -> %04x\n", reg, ret);
 return ret;
}
