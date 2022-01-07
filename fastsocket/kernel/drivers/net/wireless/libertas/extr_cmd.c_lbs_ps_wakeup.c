
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dummy; } ;
typedef int __le32 ;


 int CMD_802_11_PS_MODE ;
 int CMD_SUBCMD_EXIT_PS ;
 int LBS802_11POWERMODECAM ;
 int LBS_DEB_HOST ;
 int cpu_to_le32 (int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_prepare_and_send_command (struct lbs_private*,int ,int ,int,int ,int *) ;

void lbs_ps_wakeup(struct lbs_private *priv, int wait_option)
{
 __le32 Localpsmode;

 lbs_deb_enter(LBS_DEB_HOST);

 Localpsmode = cpu_to_le32(LBS802_11POWERMODECAM);

 lbs_prepare_and_send_command(priv, CMD_802_11_PS_MODE,
         CMD_SUBCMD_EXIT_PS,
         wait_option, 0, &Localpsmode);

 lbs_deb_leave(LBS_DEB_HOST);
}
