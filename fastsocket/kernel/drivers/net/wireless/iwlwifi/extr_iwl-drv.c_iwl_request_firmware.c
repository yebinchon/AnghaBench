
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_drv {int fw_index; TYPE_2__* trans; int firmware_name; TYPE_1__* cfg; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {char* fw_name_pre; int ucode_api_max; int ucode_api_min; } ;


 int ENOENT ;
 int GFP_KERNEL ;
 int IWL_DEBUG_INFO (struct iwl_drv*,char*,char*,int ) ;
 int IWL_ERR (struct iwl_drv*,char*) ;
 int THIS_MODULE ;
 int UCODE_EXPERIMENTAL_INDEX ;
 int UCODE_EXPERIMENTAL_TAG ;
 int iwl_req_fw_callback ;
 int request_firmware_nowait (int ,int,int ,int ,int ,struct iwl_drv*,int ) ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int iwl_request_firmware(struct iwl_drv *drv, bool first)
{
 const char *name_pre = drv->cfg->fw_name_pre;
 char tag[8];

 if (first) {





  drv->fw_index = drv->cfg->ucode_api_max;
  sprintf(tag, "%d", drv->fw_index);
 } else {
  drv->fw_index--;
  sprintf(tag, "%d", drv->fw_index);
 }

 if (drv->fw_index < drv->cfg->ucode_api_min) {
  IWL_ERR(drv, "no suitable firmware found!\n");
  return -ENOENT;
 }

 sprintf(drv->firmware_name, "%s%s%s", name_pre, tag, ".ucode");

 IWL_DEBUG_INFO(drv, "attempting to load firmware %s'%s'\n",
         (drv->fw_index == UCODE_EXPERIMENTAL_INDEX)
    ? "EXPERIMENTAL " : "",
         drv->firmware_name);

 return request_firmware_nowait(THIS_MODULE, 1, drv->firmware_name,
           drv->trans->dev,
           GFP_KERNEL, drv, iwl_req_fw_callback);
}
