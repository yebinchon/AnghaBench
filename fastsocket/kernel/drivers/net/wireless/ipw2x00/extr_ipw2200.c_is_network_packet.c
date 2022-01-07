
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libipw_hdr_4addr {int addr1; int addr2; int addr3; } ;
struct ipw_priv {TYPE_2__* net_dev; int bssid; TYPE_1__* ieee; } ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {int iw_mode; } ;


 int ETH_ALEN ;


 int is_multicast_ether_addr (int ) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int is_network_packet(struct ipw_priv *priv,
        struct libipw_hdr_4addr *header)
{


 switch (priv->ieee->iw_mode) {
 case 129:

  if (!memcmp(header->addr2, priv->net_dev->dev_addr, ETH_ALEN))
   return 0;


  if (is_multicast_ether_addr(header->addr1))
   return !memcmp(header->addr3, priv->bssid, ETH_ALEN);


  return !memcmp(header->addr1, priv->net_dev->dev_addr,
          ETH_ALEN);

 case 128:

  if (!memcmp(header->addr3, priv->net_dev->dev_addr, ETH_ALEN))
   return 0;


  if (is_multicast_ether_addr(header->addr1))
   return !memcmp(header->addr2, priv->bssid, ETH_ALEN);


  return !memcmp(header->addr1, priv->net_dev->dev_addr,
          ETH_ALEN);
 }

 return 1;
}
