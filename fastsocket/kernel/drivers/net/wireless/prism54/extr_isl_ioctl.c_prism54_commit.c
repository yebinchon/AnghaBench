
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ iw_mode; } ;
typedef TYPE_1__ islpci_private ;


 int DOT11_OID_SSID ;
 scalar_t__ IW_MODE_MONITOR ;
 int mgt_set_request (TYPE_1__*,int ,int ,int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_commit(struct net_device *ndev, struct iw_request_info *info,
        char *cwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);






 if (priv->iw_mode != IW_MODE_MONITOR)
  return mgt_set_request(priv, DOT11_OID_SSID, 0, ((void*)0));
 return 0;
}
