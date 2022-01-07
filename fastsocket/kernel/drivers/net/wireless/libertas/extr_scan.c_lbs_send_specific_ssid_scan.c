
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct lbs_private {scalar_t__ surpriseremoved; scalar_t__ scan_ssid_len; int scan_ssid; } ;


 int DECLARE_SSID_BUF (int ) ;
 int LBS_DEB_SCAN ;
 int lbs_deb_enter_args (int ,char*,int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_scan_networks (struct lbs_private*,int) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 int print_ssid (int ,scalar_t__*,scalar_t__) ;
 int ssid_buf ;

int lbs_send_specific_ssid_scan(struct lbs_private *priv, uint8_t *ssid,
    uint8_t ssid_len)
{
 DECLARE_SSID_BUF(ssid_buf);
 int ret = 0;

 lbs_deb_enter_args(LBS_DEB_SCAN, "SSID '%s'\n",
      print_ssid(ssid_buf, ssid, ssid_len));

 if (!ssid_len)
  goto out;

 memcpy(priv->scan_ssid, ssid, ssid_len);
 priv->scan_ssid_len = ssid_len;

 lbs_scan_networks(priv, 1);
 if (priv->surpriseremoved) {
  ret = -1;
  goto out;
 }

out:
 lbs_deb_leave_args(LBS_DEB_SCAN, "ret %d", ret);
 return ret;
}
