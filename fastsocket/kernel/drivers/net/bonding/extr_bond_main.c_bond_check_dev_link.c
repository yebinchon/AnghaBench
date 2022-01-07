
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device_ops {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;
struct net_device {int name; TYPE_2__* ethtool_ops; struct net_device_ops* netdev_ops; } ;
struct mii_ioctl_data {int val_out; int reg_num; } ;
struct ifreq {int ifr_name; } ;
struct TYPE_3__ {scalar_t__ use_carrier; } ;
struct bonding {TYPE_1__ params; } ;
struct TYPE_4__ {scalar_t__ (* get_link ) (struct net_device*) ;} ;


 int BMSR_LSTATUS ;
 int IFNAMSIZ ;
 scalar_t__ IOCTL (struct net_device*,struct ifreq*,int ) ;
 int MII_BMSR ;
 int SIOCGMIIPHY ;
 int SIOCGMIIREG ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int strncpy (int ,int ,int ) ;
 scalar_t__ stub1 (struct net_device*) ;

__attribute__((used)) static int bond_check_dev_link(struct bonding *bond,
          struct net_device *slave_dev, int reporting)
{
 const struct net_device_ops *slave_ops = slave_dev->netdev_ops;
 int (*ioctl)(struct net_device *, struct ifreq *, int);
 struct ifreq ifr;
 struct mii_ioctl_data *mii;

 if (!reporting && !netif_running(slave_dev))
  return 0;

 if (bond->params.use_carrier)
  return netif_carrier_ok(slave_dev) ? BMSR_LSTATUS : 0;


 if (slave_dev->ethtool_ops) {
  if (slave_dev->ethtool_ops->get_link) {
   u32 link;

   link = slave_dev->ethtool_ops->get_link(slave_dev);

   return link ? BMSR_LSTATUS : 0;
  }
 }


 ioctl = slave_ops->ndo_do_ioctl;
 if (ioctl) {
  strncpy(ifr.ifr_name, slave_dev->name, IFNAMSIZ);
  mii = if_mii(&ifr);
  if (IOCTL(slave_dev, &ifr, SIOCGMIIPHY) == 0) {
   mii->reg_num = MII_BMSR;
   if (IOCTL(slave_dev, &ifr, SIOCGMIIREG) == 0)
    return mii->val_out & BMSR_LSTATUS;
  }
 }







 return reporting ? -1 : BMSR_LSTATUS;
}
