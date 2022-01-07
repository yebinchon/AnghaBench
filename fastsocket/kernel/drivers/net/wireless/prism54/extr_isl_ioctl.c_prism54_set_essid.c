
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct obj_ssid {int length; int octets; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
struct TYPE_5__ {scalar_t__ iw_mode; } ;
typedef TYPE_1__ islpci_private ;


 int DOT11_OID_SSID ;
 int E2BIG ;
 scalar_t__ IW_MODE_MONITOR ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int mgt_set (TYPE_1__*,int ,struct obj_ssid*) ;
 int mgt_set_request (TYPE_1__*,int ,int ,struct obj_ssid*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_essid(struct net_device *ndev, struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct obj_ssid essid;

 memset(essid.octets, 0, 33);


 if (dwrq->flags && dwrq->length) {
  if (dwrq->length > 32)
   return -E2BIG;
  essid.length = dwrq->length;
  memcpy(essid.octets, extra, dwrq->length);
 } else
  essid.length = 0;

 if (priv->iw_mode != IW_MODE_MONITOR)
  return mgt_set_request(priv, DOT11_OID_SSID, 0, &essid);


 mgt_set(priv, DOT11_OID_SSID, &essid);
 return 0;

}
