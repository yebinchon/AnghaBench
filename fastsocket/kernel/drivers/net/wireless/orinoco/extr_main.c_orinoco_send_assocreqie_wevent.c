
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
union iwreq_data {TYPE_2__ data; } ;
typedef int u8 ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {int has_wpa; struct hermes hw; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
typedef int buf ;
struct TYPE_3__ {int (* read_ltv ) (struct hermes*,int ,int ,int,int *,int**) ;} ;


 int HERMES_RID_CURRENT_ASSOC_REQ_INFO ;
 int IWEVASSOCREQIE ;
 int USER_BAP ;
 int* orinoco_get_wpa_ie (int*,int) ;
 int stub1 (struct hermes*,int ,int ,int,int *,int**) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int*) ;

__attribute__((used)) static void orinoco_send_assocreqie_wevent(struct orinoco_private *priv)
{
 struct net_device *dev = priv->ndev;
 struct hermes *hw = &priv->hw;
 union iwreq_data wrqu;
 int err;
 u8 buf[88];
 u8 *ie;

 if (!priv->has_wpa)
  return;

 err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_CURRENT_ASSOC_REQ_INFO,
    sizeof(buf), ((void*)0), &buf);
 if (err != 0)
  return;

 ie = orinoco_get_wpa_ie(buf, sizeof(buf));
 if (ie) {
  int rem = sizeof(buf) - (ie - &buf[0]);
  wrqu.data.length = ie[1] + 2;
  if (wrqu.data.length > rem)
   wrqu.data.length = rem;

  if (wrqu.data.length)

   wireless_send_event(dev, IWEVASSOCREQIE, &wrqu, ie);
 }
}
