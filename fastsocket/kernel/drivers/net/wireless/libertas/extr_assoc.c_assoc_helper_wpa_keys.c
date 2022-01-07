
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int wpa_mcast_key; int wpa_unicast_key; } ;
struct enc_key {int dummy; } ;
struct assoc_request {unsigned int flags; int wpa_mcast_key; int wpa_unicast_key; } ;


 int ASSOC_FLAG_WPA_MCAST_KEY ;
 int ASSOC_FLAG_WPA_UCAST_KEY ;
 int CMD_ACT_SET ;
 int LBS_DEB_ASSOC ;
 int clear_bit (int ,unsigned int*) ;
 int lbs_cmd_802_11_key_material (struct lbs_private*,int ,struct assoc_request*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ test_bit (int ,unsigned int*) ;

__attribute__((used)) static int assoc_helper_wpa_keys(struct lbs_private *priv,
                                 struct assoc_request * assoc_req)
{
 int ret = 0;
 unsigned int flags = assoc_req->flags;

 lbs_deb_enter(LBS_DEB_ASSOC);






 if (test_bit(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags)) {
  clear_bit(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags);
  ret = lbs_cmd_802_11_key_material(priv, CMD_ACT_SET, assoc_req);
  assoc_req->flags = flags;
 }

 if (ret)
  goto out;

 memcpy(&priv->wpa_unicast_key, &assoc_req->wpa_unicast_key,
   sizeof(struct enc_key));

 if (test_bit(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags)) {
  clear_bit(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags);

  ret = lbs_cmd_802_11_key_material(priv, CMD_ACT_SET, assoc_req);
  assoc_req->flags = flags;

  memcpy(&priv->wpa_mcast_key, &assoc_req->wpa_mcast_key,
    sizeof(struct enc_key));
 }

out:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
