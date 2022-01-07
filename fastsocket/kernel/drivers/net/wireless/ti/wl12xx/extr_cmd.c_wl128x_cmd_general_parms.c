
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_priv {int tcxo_clock; int ref_clock; } ;
struct wl128x_ini_general_params {scalar_t__ tx_bip_fem_manufacturer; } ;
struct wl128x_nvs_file {struct wl128x_ini_general_params general_params; } ;
struct TYPE_4__ {int tx_bip_fem_auto_detect; scalar_t__ tx_bip_fem_manufacturer; int tcxo_ref_clock; int ref_clock; } ;
struct TYPE_3__ {int id; } ;
struct wl128x_general_parms_cmd {TYPE_2__ general_params; TYPE_1__ test; } ;
struct wl1271 {scalar_t__ plt_mode; scalar_t__ fem_manuf; scalar_t__ nvs; struct wl12xx_priv* priv; } ;


 int DEBUG_CMD ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PLT_FEM_DETECT ;
 int TEST_CMD_INI_FILE_GENERAL_PARAM ;
 scalar_t__ WL1271_INI_FEM_MODULE_COUNT ;
 int kfree (struct wl128x_general_parms_cmd*) ;
 struct wl128x_general_parms_cmd* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,struct wl128x_ini_general_params*,int) ;
 int wl1271_cmd_test (struct wl1271*,struct wl128x_general_parms_cmd*,int,int) ;
 int wl1271_debug (int ,char*,char*,scalar_t__) ;
 int wl1271_warning (char*) ;

int wl128x_cmd_general_parms(struct wl1271 *wl)
{
 struct wl128x_general_parms_cmd *gen_parms;
 struct wl128x_ini_general_params *gp =
  &((struct wl128x_nvs_file *)wl->nvs)->general_params;
 struct wl12xx_priv *priv = wl->priv;
 bool answer = 0;
 int ret;

 if (!wl->nvs)
  return -ENODEV;

 if (gp->tx_bip_fem_manufacturer >= WL1271_INI_FEM_MODULE_COUNT) {
  wl1271_warning("FEM index from ini out of bounds");
  return -EINVAL;
 }

 gen_parms = kzalloc(sizeof(*gen_parms), GFP_KERNEL);
 if (!gen_parms)
  return -ENOMEM;

 gen_parms->test.id = TEST_CMD_INI_FILE_GENERAL_PARAM;

 memcpy(&gen_parms->general_params, gp, sizeof(*gp));


 if (wl->plt_mode == PLT_FEM_DETECT)
  gen_parms->general_params.tx_bip_fem_auto_detect = 1;

 if (gen_parms->general_params.tx_bip_fem_auto_detect)
  answer = 1;


 gen_parms->general_params.ref_clock = priv->ref_clock;
 gen_parms->general_params.tcxo_ref_clock = priv->tcxo_clock;

 ret = wl1271_cmd_test(wl, gen_parms, sizeof(*gen_parms), answer);
 if (ret < 0) {
  wl1271_warning("CMD_INI_FILE_GENERAL_PARAM failed");
  goto out;
 }

 gp->tx_bip_fem_manufacturer =
  gen_parms->general_params.tx_bip_fem_manufacturer;

 if (gp->tx_bip_fem_manufacturer >= WL1271_INI_FEM_MODULE_COUNT) {
  wl1271_warning("FEM index from FW out of bounds");
  ret = -EINVAL;
  goto out;
 }


 if (wl->plt_mode == PLT_FEM_DETECT)
  wl->fem_manuf = gp->tx_bip_fem_manufacturer;

 wl1271_debug(DEBUG_CMD, "FEM autodetect: %s, manufacturer: %d\n",
  answer == 0 ?
   "manual" :
  wl->plt_mode == PLT_FEM_DETECT ?
   "calibrator_fem_detect" :
   "auto",
  gp->tx_bip_fem_manufacturer);

out:
 kfree(gen_parms);
 return ret;
}
