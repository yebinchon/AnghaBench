
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int tsc_arr ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {struct hermes hw; } ;
struct TYPE_2__ {int (* read_ltv ) (struct hermes*,int ,int ,int,int *,int ***) ;} ;


 int EINVAL ;
 int HERMES_RID_CURRENT_TKIP_IV ;
 int ORINOCO_SEQ_LEN ;
 int USER_BAP ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct hermes*,int ,int ,int,int *,int ***) ;

int orinoco_hw_get_tkip_iv(struct orinoco_private *priv, int key, u8 *tsc)
{
 struct hermes *hw = &priv->hw;
 int err = 0;
 u8 tsc_arr[4][ORINOCO_SEQ_LEN];

 if ((key < 0) || (key >= 4))
  return -EINVAL;

 err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_CURRENT_TKIP_IV,
    sizeof(tsc_arr), ((void*)0), &tsc_arr);
 if (!err)
  memcpy(tsc, &tsc_arr[key][0], sizeof(tsc_arr[0]));

 return err;
}
