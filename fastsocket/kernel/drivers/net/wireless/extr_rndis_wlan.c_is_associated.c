
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct rndis_wlan_private {int radio_on; } ;


 int ETH_ALEN ;
 int get_bssid (struct usbnet*,int *) ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int is_zero_ether_addr (int *) ;

__attribute__((used)) static bool is_associated(struct usbnet *usbdev)
{
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);
 u8 bssid[ETH_ALEN];
 int ret;

 if (!priv->radio_on)
  return 0;

 ret = get_bssid(usbdev, bssid);

 return (ret == 0 && !is_zero_ether_addr(bssid));
}
