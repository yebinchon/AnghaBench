
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ fw_ready; scalar_t__ mesh_dev; scalar_t__ dev; } ;
struct cmd_header {int dummy; } ;


 int LBS_DEB_FW ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int netif_device_detach (scalar_t__) ;

__attribute__((used)) static int lbs_suspend_callback(struct lbs_private *priv, unsigned long dummy,
    struct cmd_header *cmd)
{
 lbs_deb_enter(LBS_DEB_FW);

 netif_device_detach(priv->dev);
 if (priv->mesh_dev)
  netif_device_detach(priv->mesh_dev);

 priv->fw_ready = 0;
 lbs_deb_leave(LBS_DEB_FW);
 return 0;
}
