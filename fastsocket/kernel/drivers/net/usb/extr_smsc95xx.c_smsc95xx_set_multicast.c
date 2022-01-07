
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {TYPE_1__* net; scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int mac_cr_lock; } ;
struct net_device {int dummy; } ;
struct dev_mc_list {scalar_t__ dmi_addrlen; struct dev_mc_list* next; int dmi_addr; } ;
struct TYPE_2__ {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;


 scalar_t__ ETH_ALEN ;
 int HASHH ;
 int HASHL ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CR ;
 int MAC_CR_HPFILT_ ;
 int MAC_CR_MCPAS_ ;
 int MAC_CR_PRMS_ ;
 int devdbg (struct usbnet*,char*,...) ;
 int devwarn (struct usbnet*,char*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_drv (struct usbnet*) ;
 int smsc95xx_hash (int ) ;
 int smsc95xx_write_reg_async (struct usbnet*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smsc95xx_set_multicast(struct net_device *netdev)
{
 struct usbnet *dev = netdev_priv(netdev);
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 u32 hash_hi = 0;
 u32 hash_lo = 0;
 unsigned long flags;

 spin_lock_irqsave(&pdata->mac_cr_lock, flags);

 if (dev->net->flags & IFF_PROMISC) {
  if (netif_msg_drv(dev))
   devdbg(dev, "promiscuous mode enabled");
  pdata->mac_cr |= MAC_CR_PRMS_;
  pdata->mac_cr &= ~(MAC_CR_MCPAS_ | MAC_CR_HPFILT_);
 } else if (dev->net->flags & IFF_ALLMULTI) {
  if (netif_msg_drv(dev))
   devdbg(dev, "receive all multicast enabled");
  pdata->mac_cr |= MAC_CR_MCPAS_;
  pdata->mac_cr &= ~(MAC_CR_PRMS_ | MAC_CR_HPFILT_);
 } else if (dev->net->mc_count > 0) {
  struct dev_mc_list *mc_list = dev->net->mc_list;
  int count = 0;

  pdata->mac_cr |= MAC_CR_HPFILT_;
  pdata->mac_cr &= ~(MAC_CR_PRMS_ | MAC_CR_MCPAS_);

  while (mc_list) {
   count++;
   if (mc_list->dmi_addrlen == ETH_ALEN) {
    u32 bitnum = smsc95xx_hash(mc_list->dmi_addr);
    u32 mask = 0x01 << (bitnum & 0x1F);
    if (bitnum & 0x20)
     hash_hi |= mask;
    else
     hash_lo |= mask;
   } else {
    devwarn(dev, "dmi_addrlen != 6");
   }
   mc_list = mc_list->next;
  }

  if (count != ((u32)dev->net->mc_count))
   devwarn(dev, "mc_count != dev->mc_count");

  if (netif_msg_drv(dev))
   devdbg(dev, "HASHH=0x%08X, HASHL=0x%08X", hash_hi,
    hash_lo);
 } else {
  if (netif_msg_drv(dev))
   devdbg(dev, "receive own packets only");
  pdata->mac_cr &=
   ~(MAC_CR_PRMS_ | MAC_CR_MCPAS_ | MAC_CR_HPFILT_);
 }

 spin_unlock_irqrestore(&pdata->mac_cr_lock, flags);


 smsc95xx_write_reg_async(dev, HASHH, &hash_hi);
 smsc95xx_write_reg_async(dev, HASHL, &hash_lo);
 smsc95xx_write_reg_async(dev, MAC_CR, &pdata->mac_cr);
}
