
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct emac_priv {scalar_t__* multicast_hash_cnt; size_t mac_hash1; size_t mac_hash2; } ;


 size_t BIT (size_t) ;
 size_t hash_get (int *) ;

__attribute__((used)) static int hash_del(struct emac_priv *priv, u8 *mac_addr)
{
 u32 hash_value;
 u32 hash_bit;

 hash_value = hash_get(mac_addr);
 if (priv->multicast_hash_cnt[hash_value] > 0) {

  --priv->multicast_hash_cnt[hash_value];
 }



 if (priv->multicast_hash_cnt[hash_value] > 0)
  return 0;

 if (hash_value < 32) {
  hash_bit = BIT(hash_value);
  priv->mac_hash1 &= ~hash_bit;
 } else {
  hash_bit = BIT((hash_value - 32));
  priv->mac_hash2 &= ~hash_bit;
 }


 return 1;
}
