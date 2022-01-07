
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int fw_ready; scalar_t__ mesh_dev; scalar_t__ dev; } ;


 int CMD_802_11_RSSI ;
 int LBS_DEB_FW ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_prepare_and_send_command (struct lbs_private*,int ,int ,int ,int ,int *) ;
 int netif_device_attach (scalar_t__) ;

void lbs_resume(struct lbs_private *priv)
{
 lbs_deb_enter(LBS_DEB_FW);

 priv->fw_ready = 1;



 lbs_prepare_and_send_command(priv, CMD_802_11_RSSI, 0,
         0, 0, ((void*)0));

 netif_device_attach(priv->dev);
 if (priv->mesh_dev)
  netif_device_attach(priv->mesh_dev);

 lbs_deb_leave(LBS_DEB_FW);
}
