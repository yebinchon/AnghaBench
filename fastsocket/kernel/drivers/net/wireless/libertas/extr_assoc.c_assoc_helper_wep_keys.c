
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbs_private {int lock; int wep_tx_keyidx; int * wep_keys; int mac_control; } ;
struct enc_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ wep_enabled; } ;
struct assoc_request {int wep_tx_keyidx; TYPE_2__* wep_keys; TYPE_1__ secinfo; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int CMD_ACT_ADD ;
 int CMD_ACT_MAC_WEP_ENABLE ;
 int CMD_ACT_REMOVE ;
 int LBS_DEB_ASSOC ;
 int lbs_cmd_802_11_set_wep (struct lbs_private*,int ,struct assoc_request*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_set_mac_control (struct lbs_private*) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int assoc_helper_wep_keys(struct lbs_private *priv,
     struct assoc_request *assoc_req)
{
 int i;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_ASSOC);


 if (assoc_req->wep_keys[0].len || assoc_req->wep_keys[1].len ||
     assoc_req->wep_keys[2].len || assoc_req->wep_keys[3].len)
  ret = lbs_cmd_802_11_set_wep(priv, CMD_ACT_ADD, assoc_req);
 else
  ret = lbs_cmd_802_11_set_wep(priv, CMD_ACT_REMOVE, assoc_req);

 if (ret)
  goto out;


 if (assoc_req->secinfo.wep_enabled)
  priv->mac_control |= CMD_ACT_MAC_WEP_ENABLE;
 else
  priv->mac_control &= ~CMD_ACT_MAC_WEP_ENABLE;

 lbs_set_mac_control(priv);

 mutex_lock(&priv->lock);


 for (i = 0; i < 4; i++) {
  memcpy(&priv->wep_keys[i], &assoc_req->wep_keys[i],
         sizeof(struct enc_key));
 }
 priv->wep_tx_keyidx = assoc_req->wep_tx_keyidx;

 mutex_unlock(&priv->lock);

out:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
