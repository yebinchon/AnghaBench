
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int rx_csum; } ;
struct TYPE_7__ {void (* function ) (unsigned long) ;unsigned long data; } ;
struct spider_net_card {struct net_device* netdev; TYPE_2__* pdev; scalar_t__ ignore_rx_ramfull; scalar_t__ num_rx_ints; int napi; TYPE_1__ options; TYPE_4__ aneg_timer; scalar_t__ aneg_count; TYPE_4__ tx_timer; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int features; int name; int dev; int irq; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int irq; int dev; } ;


 int EIO ;
 int ETH_ALEN ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LLTX ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SPIDER_NET_NAPI_WEIGHT ;
 int SPIDER_NET_RX_CSUM_DEFAULT ;
 int dev_err (int *,char*,int) ;
 int init_timer (TYPE_4__*) ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ netif_msg_probe (struct spider_net_card*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_device_to_OF_node (TYPE_2__*) ;
 int pci_set_drvdata (TYPE_2__*,struct net_device*) ;
 int pr_info (char*,int ) ;
 int register_netdev (struct net_device*) ;
 scalar_t__ spider_net_cleanup_tx_ring ;
 void spider_net_link_phy (unsigned long) ;
 int spider_net_poll ;
 int spider_net_set_mac (struct net_device*,struct sockaddr*) ;
 int spider_net_setup_netdev_ops (struct net_device*) ;

__attribute__((used)) static int
spider_net_setup_netdev(struct spider_net_card *card)
{
 int result;
 struct net_device *netdev = card->netdev;
 struct device_node *dn;
 struct sockaddr addr;
 const u8 *mac;

 SET_NETDEV_DEV(netdev, &card->pdev->dev);

 pci_set_drvdata(card->pdev, netdev);

 init_timer(&card->tx_timer);
 card->tx_timer.function =
  (void (*)(unsigned long)) spider_net_cleanup_tx_ring;
 card->tx_timer.data = (unsigned long) card;
 netdev->irq = card->pdev->irq;

 card->aneg_count = 0;
 init_timer(&card->aneg_timer);
 card->aneg_timer.function = spider_net_link_phy;
 card->aneg_timer.data = (unsigned long) card;

 card->options.rx_csum = SPIDER_NET_RX_CSUM_DEFAULT;

 netif_napi_add(netdev, &card->napi,
         spider_net_poll, SPIDER_NET_NAPI_WEIGHT);

 spider_net_setup_netdev_ops(netdev);

 netdev->features = NETIF_F_IP_CSUM | NETIF_F_LLTX;



 netdev->irq = card->pdev->irq;
 card->num_rx_ints = 0;
 card->ignore_rx_ramfull = 0;

 dn = pci_device_to_OF_node(card->pdev);
 if (!dn)
  return -EIO;

 mac = of_get_property(dn, "local-mac-address", ((void*)0));
 if (!mac)
  return -EIO;
 memcpy(addr.sa_data, mac, ETH_ALEN);

 result = spider_net_set_mac(netdev, &addr);
 if ((result) && (netif_msg_probe(card)))
  dev_err(&card->netdev->dev,
          "Failed to set MAC address: %i\n", result);

 result = register_netdev(netdev);
 if (result) {
  if (netif_msg_probe(card))
   dev_err(&card->netdev->dev,
           "Couldn't register net_device: %i\n", result);
  return result;
 }

 if (netif_msg_probe(card))
  pr_info("Initialized device %s.\n", netdev->name);

 return 0;
}
