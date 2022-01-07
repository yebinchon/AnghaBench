
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int broadcast; int dev_addr; int mtu; } ;
struct TYPE_4__ {TYPE_1__* rom; } ;
struct hpsb_host {int node_count; int* speed; TYPE_2__ csr; } ;
struct eth1394_priv {int bc_maxpayload; int bc_sspd; int lock; int ud_list; struct hpsb_host* host; } ;
struct TYPE_3__ {int * bus_info_data; } ;


 int IEEE1394_SPEED_100 ;
 int IEEE1394_SPEED_MAX ;
 int SELFID_SPEED_UNKNOWN ;
 int ether1394_max_mtu (struct hpsb_host*) ;
 int get_unaligned (int *) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int,int) ;
 int min (int,int ) ;
 struct eth1394_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ether1394_reset_priv(struct net_device *dev, int set_mtu)
{
 unsigned long flags;
 int i;
 struct eth1394_priv *priv = netdev_priv(dev);
 struct hpsb_host *host = priv->host;
 u64 guid = get_unaligned((u64 *)&(host->csr.rom->bus_info_data[3]));
 int max_speed = IEEE1394_SPEED_MAX;

 spin_lock_irqsave(&priv->lock, flags);

 memset(priv->ud_list, 0, sizeof(priv->ud_list));
 priv->bc_maxpayload = 512;





 for (i = 0; i < host->node_count; i++) {

  if (host->speed[i] == SELFID_SPEED_UNKNOWN) {
   max_speed = IEEE1394_SPEED_100;
   break;
  }
  if (max_speed > host->speed[i])
   max_speed = host->speed[i];
 }
 priv->bc_sspd = max_speed;

 if (set_mtu) {


  dev->mtu = min(1500, ether1394_max_mtu(host));


  memcpy(dev->dev_addr, &guid, sizeof(u64));
  memset(dev->broadcast, 0xff, sizeof(u64));
 }

 spin_unlock_irqrestore(&priv->lock, flags);
}
