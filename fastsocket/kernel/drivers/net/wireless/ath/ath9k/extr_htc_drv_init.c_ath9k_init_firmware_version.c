
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_fw_version {int minor; int major; } ;
struct ieee80211_hw {TYPE_1__* wiphy; } ;
struct ath9k_htc_priv {int fw_version_major; int fw_version_minor; int dev; struct ieee80211_hw* hw; } ;
typedef int cmd_rsp ;
struct TYPE_2__ {int fw_version; } ;


 int EINVAL ;
 int MAJOR_VERSION_REQ ;
 int MINOR_VERSION_REQ ;
 int WMI_CMD (int ) ;
 int WMI_GET_FW_VERSION ;
 void* be16_to_cpu (int ) ;
 int dev_err (int ,char*,int,int) ;
 int dev_info (int ,char*,int,int) ;
 int memset (struct wmi_fw_version*,int ,int) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static int ath9k_init_firmware_version(struct ath9k_htc_priv *priv)
{
 struct ieee80211_hw *hw = priv->hw;
 struct wmi_fw_version cmd_rsp;
 int ret;

 memset(&cmd_rsp, 0, sizeof(cmd_rsp));

 WMI_CMD(WMI_GET_FW_VERSION);
 if (ret)
  return -EINVAL;

 priv->fw_version_major = be16_to_cpu(cmd_rsp.major);
 priv->fw_version_minor = be16_to_cpu(cmd_rsp.minor);

 snprintf(hw->wiphy->fw_version, sizeof(hw->wiphy->fw_version), "%d.%d",
   priv->fw_version_major,
   priv->fw_version_minor);

 dev_info(priv->dev, "ath9k_htc: FW Version: %d.%d\n",
   priv->fw_version_major,
   priv->fw_version_minor);





 if (priv->fw_version_major != MAJOR_VERSION_REQ ||
     priv->fw_version_minor < MINOR_VERSION_REQ) {
  dev_err(priv->dev, "ath9k_htc: Please upgrade to FW version %d.%d\n",
   MAJOR_VERSION_REQ, MINOR_VERSION_REQ);
  return -EINVAL;
 }

 return 0;
}
