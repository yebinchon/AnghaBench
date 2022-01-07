
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct emac_priv {void* mac_hash2; void* mac_hash1; int * multicast_hash_cnt; TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;



 void* EMAC_ALL_MULTI_REG_VALUE ;

 int EMAC_MACHASH1 ;
 int EMAC_MACHASH2 ;


 int EMAC_NUM_MULTICAST_BITS ;
 int dev_err (struct device*,char*,int) ;
 int emac_write (int ,void*) ;
 int hash_add (struct emac_priv*,int *) ;
 int hash_del (struct emac_priv*,int *) ;
 int memset (int *,int ,int) ;
 int netif_msg_drv (struct emac_priv*) ;

__attribute__((used)) static void emac_add_mcast(struct emac_priv *priv, u32 action, u8 *mac_addr)
{
 struct device *emac_dev = &priv->ndev->dev;
 int update = -1;

 switch (action) {
 case 129:
  update = hash_add(priv, mac_addr);
  break;
 case 128:
  update = hash_del(priv, mac_addr);
  break;
 case 130:
  update = 1;
  priv->mac_hash1 = EMAC_ALL_MULTI_REG_VALUE;
  priv->mac_hash2 = EMAC_ALL_MULTI_REG_VALUE;
  break;
 case 131:
  update = 1;
  priv->mac_hash1 = 0;
  priv->mac_hash2 = 0;
  memset(&(priv->multicast_hash_cnt[0]), 0,
  sizeof(priv->multicast_hash_cnt[0]) *
         EMAC_NUM_MULTICAST_BITS);
  break;
 default:
  if (netif_msg_drv(priv))
   dev_err(emac_dev, "DaVinci EMAC: add_mcast" ": bad operation %d", action);

  break;
 }


 if (update > 0) {
  emac_write(EMAC_MACHASH1, priv->mac_hash1);
  emac_write(EMAC_MACHASH2, priv->mac_hash2);
 }
}
