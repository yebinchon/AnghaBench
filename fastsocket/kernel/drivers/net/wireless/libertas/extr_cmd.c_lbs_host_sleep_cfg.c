
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct wol_config {int dummy; } ;
struct lbs_private {scalar_t__ wol_criteria; int wol_gap; int wol_gpio; } ;
struct TYPE_4__ {int action; } ;
struct TYPE_3__ {int size; } ;
struct cmd_ds_host_sleep {TYPE_2__ wol_conf; int gap; int gpio; int criteria; TYPE_1__ hdr; } ;
typedef int cmd_config ;


 int CMD_802_11_HOST_SLEEP_CFG ;
 int CMD_ACT_ACTION_NONE ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (scalar_t__) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_host_sleep*) ;
 int lbs_deb_cmd (char*,scalar_t__) ;
 int lbs_pr_info (char*,int) ;
 int memcpy (int *,int *,int) ;

int lbs_host_sleep_cfg(struct lbs_private *priv, uint32_t criteria,
  struct wol_config *p_wol_config)
{
 struct cmd_ds_host_sleep cmd_config;
 int ret;

 cmd_config.hdr.size = cpu_to_le16(sizeof(cmd_config));
 cmd_config.criteria = cpu_to_le32(criteria);
 cmd_config.gpio = priv->wol_gpio;
 cmd_config.gap = priv->wol_gap;

 if (p_wol_config != ((void*)0))
  memcpy((uint8_t *)&cmd_config.wol_conf, (uint8_t *)p_wol_config,
    sizeof(struct wol_config));
 else
  cmd_config.wol_conf.action = CMD_ACT_ACTION_NONE;

 ret = lbs_cmd_with_response(priv, CMD_802_11_HOST_SLEEP_CFG, &cmd_config);
 if (!ret) {
  if (criteria) {
   lbs_deb_cmd("Set WOL criteria to %x\n", criteria);
   priv->wol_criteria = criteria;
  } else
   memcpy((uint8_t *) p_wol_config,
     (uint8_t *)&cmd_config.wol_conf,
     sizeof(struct wol_config));
 } else {
  lbs_pr_info("HOST_SLEEP_CFG failed %d\n", ret);
 }

 return ret;
}
