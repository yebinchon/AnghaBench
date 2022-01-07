
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {struct obj_ssid* ptr; } ;
typedef int u8 ;
struct obj_ssid {int length; char* octets; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
typedef int islpci_private ;


 int DOT11_OID_SSID ;
 scalar_t__ IW_ESSID_MAX_SIZE ;
 int kfree (struct obj_ssid*) ;
 int memcpy (char*,char*,int ) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int min (int ,int) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_essid(struct net_device *ndev, struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct obj_ssid *essid;
 union oid_res_t r;
 int rvalue;

 rvalue = mgt_get_request(priv, DOT11_OID_SSID, 0, ((void*)0), &r);
 essid = r.ptr;

 if (essid->length) {
  dwrq->flags = 1;

  dwrq->length = min((u8)IW_ESSID_MAX_SIZE, essid->length);
 } else {
  dwrq->flags = 0;
  dwrq->length = 0;
 }
 essid->octets[essid->length] = '\0';
 memcpy(extra, essid->octets, dwrq->length);
 kfree(essid);

 return rvalue;
}
