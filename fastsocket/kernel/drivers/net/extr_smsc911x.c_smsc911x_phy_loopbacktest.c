
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct smsc911x_data {char* loopback_tx_pkt; int mac_lock; int resetcount; scalar_t__ loopback_rx_pkt; struct phy_device* phy_dev; } ;
struct phy_device {int addr; int bus; } ;
struct net_device {int dummy; } ;


 int BMCR_FULLDPLX ;
 int BMCR_LOOPBACK ;
 int EIO ;
 int ETH_ALEN ;
 int HW_CFG ;
 unsigned int HW_CFG_SF_ ;
 unsigned int HW_CFG_TX_FIF_SZ_ ;
 int MAC_CR ;
 int MAC_CR_FDPX_ ;
 int MAC_CR_RXEN_ ;
 int MAC_CR_TXEN_ ;
 int MII_BMCR ;
 unsigned int MIN_PACKET_SIZE ;
 int RX_CFG ;
 int TX_CFG ;
 int TX_CFG_TX_ON_ ;
 int memset (char*,int,int ) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,int) ;
 int smsc911x_mii_write (int ,int ,int ,int) ;
 scalar_t__ smsc911x_phy_check_loopbackpkt (struct smsc911x_data*) ;
 int smsc911x_phy_reset (struct smsc911x_data*) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smsc911x_phy_loopbacktest(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 struct phy_device *phy_dev = pdata->phy_dev;
 int result = -EIO;
 unsigned int i, val;
 unsigned long flags;


 memset(pdata->loopback_tx_pkt, 0xff, ETH_ALEN);


 for (i = 6; i < 12; i++)
  pdata->loopback_tx_pkt[i] = (char)i;


 pdata->loopback_tx_pkt[12] = 0x00;
 pdata->loopback_tx_pkt[13] = 0x00;

 for (i = 14; i < MIN_PACKET_SIZE; i++)
  pdata->loopback_tx_pkt[i] = (char)i;

 val = smsc911x_reg_read(pdata, HW_CFG);
 val &= HW_CFG_TX_FIF_SZ_;
 val |= HW_CFG_SF_;
 smsc911x_reg_write(pdata, HW_CFG, val);

 smsc911x_reg_write(pdata, TX_CFG, TX_CFG_TX_ON_);
 smsc911x_reg_write(pdata, RX_CFG,
  (u32)((ulong)pdata->loopback_rx_pkt & 0x03) << 8);

 for (i = 0; i < 10; i++) {

  smsc911x_mii_write(phy_dev->bus, phy_dev->addr, MII_BMCR,
   BMCR_LOOPBACK | BMCR_FULLDPLX);


  spin_lock_irqsave(&pdata->mac_lock, flags);
  smsc911x_mac_write(pdata, MAC_CR, MAC_CR_FDPX_
       | MAC_CR_TXEN_ | MAC_CR_RXEN_);
  spin_unlock_irqrestore(&pdata->mac_lock, flags);

  if (smsc911x_phy_check_loopbackpkt(pdata) == 0) {
   result = 0;
   break;
  }
  pdata->resetcount++;


  spin_lock_irqsave(&pdata->mac_lock, flags);
  smsc911x_mac_write(pdata, MAC_CR, 0);
  spin_unlock_irqrestore(&pdata->mac_lock, flags);

  smsc911x_phy_reset(pdata);
 }


 spin_lock_irqsave(&pdata->mac_lock, flags);
 smsc911x_mac_write(pdata, MAC_CR, 0);
 spin_unlock_irqrestore(&pdata->mac_lock, flags);


 smsc911x_mii_write(phy_dev->bus, phy_dev->addr, MII_BMCR, 0);

 smsc911x_reg_write(pdata, TX_CFG, 0);
 smsc911x_reg_write(pdata, RX_CFG, 0);

 return result;
}
