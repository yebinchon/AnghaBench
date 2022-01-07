
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ipw2100_priv {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int EIO ;
 int ETH_ALEN ;
 int IPW_DEBUG_INFO (char*,...) ;
 int IPW_ORD_STAT_ADAPTER_MAC ;
 int ipw2100_get_ordinal (struct ipw2100_priv*,int ,int *,int*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int ipw2100_read_mac_address(struct ipw2100_priv *priv)
{
 u32 length = ETH_ALEN;
 u8 addr[ETH_ALEN];

 int err;

 err = ipw2100_get_ordinal(priv, IPW_ORD_STAT_ADAPTER_MAC, addr, &length);
 if (err) {
  IPW_DEBUG_INFO("MAC address read failed\n");
  return -EIO;
 }

 memcpy(priv->net_dev->dev_addr, addr, ETH_ALEN);
 IPW_DEBUG_INFO("card MAC is %pM\n", priv->net_dev->dev_addr);

 return 0;
}
