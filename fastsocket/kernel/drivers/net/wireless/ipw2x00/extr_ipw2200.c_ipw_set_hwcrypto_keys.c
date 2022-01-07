
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipw_priv {TYPE_2__* ieee; } ;
struct TYPE_3__ {int level; int flags; int active_key; } ;
struct TYPE_4__ {TYPE_1__ sec; int host_mc_decrypt; } ;


 int DCT_FLAG_EXT_SECURITY_CCM ;
 int DCT_FLAG_EXT_SECURITY_TKIP ;
 int DCW_WEP_KEY_SEC_TYPE_CCM ;
 int DCW_WEP_KEY_SEC_TYPE_WEP ;
 int SEC_ACTIVE_KEY ;




 int ipw_send_tgi_tx_key (struct ipw_priv*,int ,int ) ;
 int ipw_send_wep_keys (struct ipw_priv*,int ) ;
 int ipw_set_hw_decrypt_multicast (struct ipw_priv*,int) ;
 int ipw_set_hw_decrypt_unicast (struct ipw_priv*,int) ;

__attribute__((used)) static void ipw_set_hwcrypto_keys(struct ipw_priv *priv)
{
 switch (priv->ieee->sec.level) {
 case 128:
  if (priv->ieee->sec.flags & SEC_ACTIVE_KEY)
   ipw_send_tgi_tx_key(priv,
         DCT_FLAG_EXT_SECURITY_CCM,
         priv->ieee->sec.active_key);

  if (!priv->ieee->host_mc_decrypt)
   ipw_send_wep_keys(priv, DCW_WEP_KEY_SEC_TYPE_CCM);
  break;
 case 129:
  if (priv->ieee->sec.flags & SEC_ACTIVE_KEY)
   ipw_send_tgi_tx_key(priv,
         DCT_FLAG_EXT_SECURITY_TKIP,
         priv->ieee->sec.active_key);
  break;
 case 130:
  ipw_send_wep_keys(priv, DCW_WEP_KEY_SEC_TYPE_WEP);
  ipw_set_hw_decrypt_unicast(priv, priv->ieee->sec.level);
  ipw_set_hw_decrypt_multicast(priv, priv->ieee->sec.level);
  break;
 case 131:
 default:
  break;
 }
}
