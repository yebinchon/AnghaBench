
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dummy; } ;


 int CMD_802_11_PS_MODE ;
 int CMD_SUBCMD_ENTER_PS ;
 int LBS_DEB_HOST ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_prepare_and_send_command (struct lbs_private*,int ,int ,int,int ,int *) ;

void lbs_ps_sleep(struct lbs_private *priv, int wait_option)
{
 lbs_deb_enter(LBS_DEB_HOST);






 lbs_prepare_and_send_command(priv, CMD_802_11_PS_MODE,
         CMD_SUBCMD_ENTER_PS, wait_option, 0, ((void*)0));

 lbs_deb_leave(LBS_DEB_HOST);
}
