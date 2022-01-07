
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int* mac_addr; } ;


 scalar_t__ ETH_ALEN ;
 int get_random_bytes (int*,scalar_t__) ;

__attribute__((used)) static void ipw_create_bssid(struct ipw_priv *priv, u8 * bssid)
{

 bssid[0] = priv->mac_addr[0];
 bssid[1] = priv->mac_addr[1];
 bssid[2] = priv->mac_addr[2];


 get_random_bytes(&bssid[3], ETH_ALEN - 3);

 bssid[0] &= 0xfe;
 bssid[0] |= 0x02;
}
