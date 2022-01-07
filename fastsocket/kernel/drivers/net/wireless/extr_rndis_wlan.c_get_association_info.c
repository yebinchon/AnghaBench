
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct ndis_80211_assoc_info {int dummy; } ;


 int OID_802_11_ASSOCIATION_INFORMATION ;
 int rndis_query_oid (struct usbnet*,int ,struct ndis_80211_assoc_info*,int*) ;

__attribute__((used)) static int get_association_info(struct usbnet *usbdev,
   struct ndis_80211_assoc_info *info, int len)
{
 return rndis_query_oid(usbdev, OID_802_11_ASSOCIATION_INFORMATION,
    info, &len);
}
