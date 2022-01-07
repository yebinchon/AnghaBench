
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {struct hermes hw; } ;
struct TYPE_2__ {int (* read_ltv ) (struct hermes*,int ,int ,int ,int *,int *) ;} ;


 int ETH_ALEN ;
 int HERMES_RID_CURRENTBSSID ;
 int USER_BAP ;
 int stub1 (struct hermes*,int ,int ,int ,int *,int *) ;

int orinoco_hw_get_current_bssid(struct orinoco_private *priv,
     u8 *addr)
{
 struct hermes *hw = &priv->hw;
 int err;

 err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_CURRENTBSSID,
    ETH_ALEN, ((void*)0), addr);

 return err;
}
