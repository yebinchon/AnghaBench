
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int trans_start; struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ currenttxskb; } ;


 int CMD_802_11_RSSI ;
 int LBS_DEB_TX ;
 int jiffies ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_host_to_card_done (struct lbs_private*) ;
 int lbs_pr_err (char*) ;
 int lbs_prepare_and_send_command (struct lbs_private*,int ,int ,int ,int ,int *) ;
 int lbs_send_tx_feedback (struct lbs_private*,int ) ;

__attribute__((used)) static void lbs_tx_timeout(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_TX);

 lbs_pr_err("tx watch dog timeout\n");

 dev->trans_start = jiffies;

 if (priv->currenttxskb)
  lbs_send_tx_feedback(priv, 0);



 lbs_host_to_card_done(priv);





 lbs_prepare_and_send_command(priv, CMD_802_11_RSSI, 0,
         0, 0, ((void*)0));

 lbs_deb_leave(LBS_DEB_TX);
}
