
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int enable11d; } ;


 int CMD_802_11D_DOMAIN_INFO ;
 int CMD_ACT_SET ;
 int CMD_OPTION_WAITFORRSP ;
 int lbs_deb_11d (char*) ;
 int lbs_prepare_and_send_command (struct lbs_private*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int set_domain_info_11d(struct lbs_private *priv)
{
 int ret;

 if (!priv->enable11d) {
  lbs_deb_11d("dnld domain Info with 11d disabled\n");
  return 0;
 }

 ret = lbs_prepare_and_send_command(priv, CMD_802_11D_DOMAIN_INFO,
        CMD_ACT_SET,
        CMD_OPTION_WAITFORRSP, 0, ((void*)0));
 if (ret)
  lbs_deb_11d("fail to dnld domain info\n");

 return ret;
}
