
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {char* plt_fw_name; int last_vif_count; char* mr_fw_name; char* sr_fw_name; int fw_type; int fw_len; int fw; int dev; } ;
struct firmware {int size; int data; } ;
typedef enum wl12xx_fw_type { ____Placeholder_wl12xx_fw_type } wl12xx_fw_type ;


 int DEBUG_BOOT ;
 int EILSEQ ;
 int ENOMEM ;
 int WL12XX_FW_TYPE_MULTI ;
 int WL12XX_FW_TYPE_NONE ;
 int WL12XX_FW_TYPE_NORMAL ;
 int WL12XX_FW_TYPE_PLT ;
 int memcpy (int ,int ,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;
 int vfree (int ) ;
 int vmalloc (int) ;
 int wl1271_debug (int ,char*,char const*) ;
 int wl1271_error (char*,...) ;

__attribute__((used)) static int wl12xx_fetch_firmware(struct wl1271 *wl, bool plt)
{
 const struct firmware *fw;
 const char *fw_name;
 enum wl12xx_fw_type fw_type;
 int ret;

 if (plt) {
  fw_type = WL12XX_FW_TYPE_PLT;
  fw_name = wl->plt_fw_name;
 } else {




  if (wl->last_vif_count > 1 && wl->mr_fw_name) {
   fw_type = WL12XX_FW_TYPE_MULTI;
   fw_name = wl->mr_fw_name;
  } else {
   fw_type = WL12XX_FW_TYPE_NORMAL;
   fw_name = wl->sr_fw_name;
  }
 }

 if (wl->fw_type == fw_type)
  return 0;

 wl1271_debug(DEBUG_BOOT, "booting firmware %s", fw_name);

 ret = request_firmware(&fw, fw_name, wl->dev);

 if (ret < 0) {
  wl1271_error("could not get firmware %s: %d", fw_name, ret);
  return ret;
 }

 if (fw->size % 4) {
  wl1271_error("firmware size is not multiple of 32 bits: %zu",
        fw->size);
  ret = -EILSEQ;
  goto out;
 }

 vfree(wl->fw);
 wl->fw_type = WL12XX_FW_TYPE_NONE;
 wl->fw_len = fw->size;
 wl->fw = vmalloc(wl->fw_len);

 if (!wl->fw) {
  wl1271_error("could not allocate memory for the firmware");
  ret = -ENOMEM;
  goto out;
 }

 memcpy(wl->fw, fw->data, wl->fw_len);
 ret = 0;
 wl->fw_type = fw_type;
out:
 release_firmware(fw);

 return ret;
}
