
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; int dev; } ;
struct TYPE_2__ {int channel; } ;
struct lbs_private {scalar_t__ mesh_fw_ver; void* mesh_tlv; TYPE_1__ curbssparams; struct net_device* dev; } ;


 int CMD_ACT_MESH_CONFIG_START ;
 int LBS_DEB_MAIN ;
 scalar_t__ MESH_FW_NEW ;
 scalar_t__ MESH_FW_OLD ;
 void* TLV_TYPE_MESH_ID ;
 void* TLV_TYPE_OLD_MESH_ID ;
 int dev_attr_lbs_mesh ;
 int dev_attr_lbs_rtap ;
 scalar_t__ device_create_file (int *,int *) ;
 int lbs_add_mesh (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_debugfs_init_one (struct lbs_private*,struct net_device*) ;
 int lbs_init_11d (struct lbs_private*) ;
 scalar_t__ lbs_mesh_config (struct lbs_private*,int ,int ) ;
 int lbs_pr_err (char*) ;
 int lbs_pr_info (char*,int ) ;
 int lbs_setup_firmware (struct lbs_private*) ;
 int lbs_update_channel (struct lbs_private*) ;
 scalar_t__ register_netdev (struct net_device*) ;

int lbs_start_card(struct lbs_private *priv)
{
 struct net_device *dev = priv->dev;
 int ret = -1;

 lbs_deb_enter(LBS_DEB_MAIN);


 ret = lbs_setup_firmware(priv);
 if (ret)
  goto done;


 lbs_init_11d(priv);

 if (register_netdev(dev)) {
  lbs_pr_err("cannot register ethX device\n");
  goto done;
 }

 lbs_update_channel(priv);




 if (priv->mesh_fw_ver == MESH_FW_OLD) {
  priv->mesh_tlv = TLV_TYPE_OLD_MESH_ID;
  if (lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_START,
        priv->curbssparams.channel)) {
   priv->mesh_tlv = TLV_TYPE_MESH_ID;
   if (lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_START,
         priv->curbssparams.channel))
    priv->mesh_tlv = 0;
  }
 } else if (priv->mesh_fw_ver == MESH_FW_NEW) {



  priv->mesh_tlv = TLV_TYPE_MESH_ID;
  if (lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_START,
        priv->curbssparams.channel))
   priv->mesh_tlv = 0;
 }
 if (priv->mesh_tlv) {
  lbs_add_mesh(priv);

  if (device_create_file(&dev->dev, &dev_attr_lbs_mesh))
   lbs_pr_err("cannot register lbs_mesh attribute\n");





  if (device_create_file(&dev->dev, &dev_attr_lbs_rtap))
   lbs_pr_err("cannot register lbs_rtap attribute\n");
 }

 lbs_debugfs_init_one(priv, dev);

 lbs_pr_info("%s: Marvell WLAN 802.11 adapter\n", dev->name);

 ret = 0;

done:
 lbs_deb_leave_args(LBS_DEB_MAIN, "ret %d", ret);
 return ret;
}
