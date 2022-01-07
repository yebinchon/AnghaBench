
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int current_addr; } ;


 int ETH_ALEN ;
 int LBTF_DEB_FW ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave_args (int ,char*,int) ;
 int lbtf_set_mac_control (struct lbtf_private*) ;
 int lbtf_set_radio_control (struct lbtf_private*) ;
 int lbtf_update_hw_spec (struct lbtf_private*) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static int lbtf_setup_firmware(struct lbtf_private *priv)
{
 int ret = -1;

 lbtf_deb_enter(LBTF_DEB_FW);



 memset(priv->current_addr, 0xff, ETH_ALEN);
 ret = lbtf_update_hw_spec(priv);
 if (ret) {
  ret = -1;
  goto done;
 }

 lbtf_set_mac_control(priv);
 lbtf_set_radio_control(priv);

 ret = 0;
done:
 lbtf_deb_leave_args(LBTF_DEB_FW, "ret: %d", ret);
 return ret;
}
