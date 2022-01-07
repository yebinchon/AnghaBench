
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_priv {int dummy; } ;
struct iwl_host_cmd {int data; int len; int id; } ;
struct TYPE_3__ {int start; int is_enable; } ;
struct TYPE_4__ {TYPE_1__ once; } ;
struct iwl_calib_cfg_cmd {TYPE_2__ ucd_calib_cfg; } ;
typedef int calib_cfg_cmd ;


 int CALIBRATION_CFG_CMD ;
 int IWL_CALIB_RT_CFG_ALL ;
 int cpu_to_le32 (int ) ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int memset (struct iwl_calib_cfg_cmd*,int ,int) ;

__attribute__((used)) static int iwlagn_send_calib_cfg_rt(struct iwl_priv *priv, u32 cfg)
{
 struct iwl_calib_cfg_cmd calib_cfg_cmd;
 struct iwl_host_cmd cmd = {
  .id = CALIBRATION_CFG_CMD,
  .len = { sizeof(struct iwl_calib_cfg_cmd), },
  .data = { &calib_cfg_cmd, },
 };

 memset(&calib_cfg_cmd, 0, sizeof(calib_cfg_cmd));
 calib_cfg_cmd.ucd_calib_cfg.once.is_enable = IWL_CALIB_RT_CFG_ALL;
 calib_cfg_cmd.ucd_calib_cfg.once.start = cpu_to_le32(cfg);

 return iwl_dvm_send_cmd(priv, &cmd);
}
