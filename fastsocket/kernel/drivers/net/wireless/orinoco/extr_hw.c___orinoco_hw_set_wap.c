
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hermes {int dummy; } ;
struct orinoco_private {int firmware_type; int desired_bssid; int bssid_fixed; struct hermes hw; } ;





 int HERMES_RID_CNFMANDATORYBSSID_SYMBOL ;
 int HERMES_RID_CNFROAMINGMODE ;
 int HERMES_WRITE_RECORD (struct hermes*,int ,int ,int *) ;
 int USER_BAP ;
 int hermes_write_wordrec (struct hermes*,int ,int ,int) ;

int __orinoco_hw_set_wap(struct orinoco_private *priv)
{
 int roaming_flag;
 int err = 0;
 struct hermes *hw = &priv->hw;

 switch (priv->firmware_type) {
 case 130:

  break;
 case 129:
  if (priv->bssid_fixed)
   roaming_flag = 2;
  else
   roaming_flag = 1;

  err = hermes_write_wordrec(hw, USER_BAP,
        HERMES_RID_CNFROAMINGMODE,
        roaming_flag);
  break;
 case 128:
  err = HERMES_WRITE_RECORD(hw, USER_BAP,
       HERMES_RID_CNFMANDATORYBSSID_SYMBOL,
       &priv->desired_bssid);
  break;
 }
 return err;
}
