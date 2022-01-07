
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct emac_priv {scalar_t__* multicast_hash_cnt; size_t mac_hash1; size_t mac_hash2; TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 size_t BIT (size_t) ;
 size_t EMAC_NUM_MULTICAST_BITS ;
 int dev_err (struct device*,char*,size_t,size_t) ;
 size_t hash_get (int *) ;
 scalar_t__ netif_msg_drv (struct emac_priv*) ;

__attribute__((used)) static int hash_add(struct emac_priv *priv, u8 *mac_addr)
{
 struct device *emac_dev = &priv->ndev->dev;
 u32 rc = 0;
 u32 hash_bit;
 u32 hash_value = hash_get(mac_addr);

 if (hash_value >= EMAC_NUM_MULTICAST_BITS) {
  if (netif_msg_drv(priv)) {
   dev_err(emac_dev, "DaVinci EMAC: hash_add(): Invalid " "Hash %08x, should not be greater than %08x",

    hash_value, (EMAC_NUM_MULTICAST_BITS - 1));
  }
  return -1;
 }


 if (priv->multicast_hash_cnt[hash_value] == 0) {
  rc = 1;
  if (hash_value < 32) {
   hash_bit = BIT(hash_value);
   priv->mac_hash1 |= hash_bit;
  } else {
   hash_bit = BIT((hash_value - 32));
   priv->mac_hash2 |= hash_bit;
  }
 }


 ++priv->multicast_hash_cnt[hash_value];

 return rc;
}
