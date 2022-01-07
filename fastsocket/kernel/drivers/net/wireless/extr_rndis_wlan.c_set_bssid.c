
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;


 int ETH_ALEN ;
 int OID_802_11_BSSID ;
 int netdev_warn (int ,char*,int const*,int) ;
 int rndis_set_oid (struct usbnet*,int ,int const*,int ) ;

__attribute__((used)) static int set_bssid(struct usbnet *usbdev, const u8 *bssid)
{
 int ret;

 ret = rndis_set_oid(usbdev, OID_802_11_BSSID, bssid, ETH_ALEN);
 if (ret < 0) {
  netdev_warn(usbdev->net, "setting BSSID[%pM] failed (%08X)\n",
       bssid, ret);
  return ret;
 }

 return ret;
}
