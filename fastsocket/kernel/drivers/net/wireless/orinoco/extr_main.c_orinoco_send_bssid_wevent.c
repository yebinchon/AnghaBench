
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {struct hermes hw; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* read_ltv ) (struct hermes*,int ,int ,int ,int *,int ) ;} ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int HERMES_RID_CURRENTBSSID ;
 int SIOCGIWAP ;
 int USER_BAP ;
 int stub1 (struct hermes*,int ,int ,int ,int *,int ) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void orinoco_send_bssid_wevent(struct orinoco_private *priv)
{
 struct net_device *dev = priv->ndev;
 struct hermes *hw = &priv->hw;
 union iwreq_data wrqu;
 int err;

 err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_CURRENTBSSID,
    ETH_ALEN, ((void*)0), wrqu.ap_addr.sa_data);
 if (err != 0)
  return;

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;


 wireless_send_event(dev, SIOCGIWAP, &wrqu, ((void*)0));
}
