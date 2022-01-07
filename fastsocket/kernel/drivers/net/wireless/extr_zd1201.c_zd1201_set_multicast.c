
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {struct dev_mc_list* next; int dmi_addr; } ;


 int ETH_ALEN ;
 int ZD1201_MAXMULTI ;
 int ZD1201_RID_CNFGROUPADDRESS ;
 int memcpy (unsigned char*,int ,int) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_setconfig (struct zd1201*,int ,unsigned char*,int,int ) ;

__attribute__((used)) static void zd1201_set_multicast(struct net_device *dev)
{
 struct zd1201 *zd = netdev_priv(dev);
 struct dev_mc_list *mc = dev->mc_list;
 unsigned char reqbuf[ETH_ALEN*ZD1201_MAXMULTI];
 int i;

 if (dev->mc_count > ZD1201_MAXMULTI)
  return;

 for (i=0; i<dev->mc_count; i++) {
  memcpy(reqbuf+i*ETH_ALEN, mc->dmi_addr, ETH_ALEN);
  mc = mc->next;
 }
 zd1201_setconfig(zd, ZD1201_RID_CNFGROUPADDRESS, reqbuf,
     dev->mc_count*ETH_ALEN, 0);

}
