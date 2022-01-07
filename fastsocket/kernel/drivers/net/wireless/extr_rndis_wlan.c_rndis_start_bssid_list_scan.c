
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct usbnet {int dummy; } ;
typedef int __le32 ;


 int OID_802_11_BSSID_LIST_SCAN ;
 int cpu_to_le32 (int) ;
 int rndis_set_oid (struct usbnet*,int ,int *,int) ;

__attribute__((used)) static int rndis_start_bssid_list_scan(struct usbnet *usbdev)
{
 __le32 tmp;


 tmp = cpu_to_le32(1);
 return rndis_set_oid(usbdev, OID_802_11_BSSID_LIST_SCAN, &tmp,
       sizeof(tmp));
}
