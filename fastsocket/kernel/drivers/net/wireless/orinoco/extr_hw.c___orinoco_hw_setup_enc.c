
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hermes {int dummy; } ;
struct orinoco_private {scalar_t__ encode_alg; int firmware_type; int key_mgmt; int iw_mode; scalar_t__ wep_restrict; int has_wpa; scalar_t__ wpa_enabled; struct hermes hw; } ;





 int HERMES_AUTH_OPEN ;
 int HERMES_AUTH_SHARED_KEY ;
 int HERMES_RID_CNFAUTHENTICATION ;
 int HERMES_RID_CNFAUTHENTICATION_AGERE ;
 int HERMES_RID_CNFSETWPAAUTHMGMTSUITE_AGERE ;
 int HERMES_RID_CNFWEPENABLED_AGERE ;
 int HERMES_RID_CNFWEPFLAGS_INTERSIL ;
 int HERMES_WEP_EXCL_UNENCRYPTED ;
 int HERMES_WEP_HOST_DECRYPT ;
 int HERMES_WEP_PRIVACY_INVOKED ;
 int NL80211_IFTYPE_MONITOR ;
 scalar_t__ ORINOCO_ALG_WEP ;
 int USER_BAP ;
 int __orinoco_hw_setup_wepkeys (struct orinoco_private*) ;
 int hermes_write_wordrec (struct hermes*,int ,int ,int) ;

int __orinoco_hw_setup_enc(struct orinoco_private *priv)
{
 struct hermes *hw = &priv->hw;
 int err = 0;
 int master_wep_flag;
 int auth_flag;
 int enc_flag;


 if (priv->encode_alg == ORINOCO_ALG_WEP)
  __orinoco_hw_setup_wepkeys(priv);

 if (priv->wep_restrict)
  auth_flag = HERMES_AUTH_SHARED_KEY;
 else
  auth_flag = HERMES_AUTH_OPEN;

 if (priv->wpa_enabled)
  enc_flag = 2;
 else if (priv->encode_alg == ORINOCO_ALG_WEP)
  enc_flag = 1;
 else
  enc_flag = 0;

 switch (priv->firmware_type) {
 case 130:
  if (priv->encode_alg == ORINOCO_ALG_WEP) {

   err = hermes_write_wordrec(hw, USER_BAP,
     HERMES_RID_CNFAUTHENTICATION_AGERE,
     auth_flag);
  }
  err = hermes_write_wordrec(hw, USER_BAP,
        HERMES_RID_CNFWEPENABLED_AGERE,
        enc_flag);
  if (err)
   return err;

  if (priv->has_wpa) {

   err = hermes_write_wordrec(hw, USER_BAP,
      HERMES_RID_CNFSETWPAAUTHMGMTSUITE_AGERE,
      priv->key_mgmt);
   if (err)
    return err;
  }

  break;

 case 129:
 case 128:
  if (priv->encode_alg == ORINOCO_ALG_WEP) {
   if (priv->wep_restrict ||
       (priv->firmware_type == 128))
    master_wep_flag = HERMES_WEP_PRIVACY_INVOKED |
        HERMES_WEP_EXCL_UNENCRYPTED;
   else
    master_wep_flag = HERMES_WEP_PRIVACY_INVOKED;

   err = hermes_write_wordrec(hw, USER_BAP,
         HERMES_RID_CNFAUTHENTICATION,
         auth_flag);
   if (err)
    return err;
  } else
   master_wep_flag = 0;

  if (priv->iw_mode == NL80211_IFTYPE_MONITOR)
   master_wep_flag |= HERMES_WEP_HOST_DECRYPT;


  err = hermes_write_wordrec(hw, USER_BAP,
        HERMES_RID_CNFWEPFLAGS_INTERSIL,
        master_wep_flag);
  if (err)
   return err;

  break;
 }

 return 0;
}
