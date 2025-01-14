
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct firmware_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int* hdr_num_entries; int fw_cnt; TYPE_1__** fw_hdr; TYPE_1__** fw_bin; } ;
struct brcms_info {int ucode; TYPE_2__ fw; int wiphy; } ;
struct brcms_firmware {int dummy; } ;
struct bcma_device {struct device dev; } ;
struct TYPE_3__ {int size; } ;


 int KBUILD_MODNAME ;
 int MAX_FW_IMAGES ;
 int UCODE_LOADER_API_VER ;
 char** brcms_firmwares ;
 int brcms_release_fw (struct brcms_info*) ;
 int brcms_ucode_data_init (struct brcms_info*,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int request_firmware (TYPE_1__**,char*,struct device*) ;
 int sprintf (char*,char*,char*,int) ;
 int wiphy_err (int ,char*,int ,char*) ;

__attribute__((used)) static int brcms_request_fw(struct brcms_info *wl, struct bcma_device *pdev)
{
 int status;
 struct device *device = &pdev->dev;
 char fw_name[100];
 int i;

 memset(&wl->fw, 0, sizeof(struct brcms_firmware));
 for (i = 0; i < MAX_FW_IMAGES; i++) {
  if (brcms_firmwares[i] == ((void*)0))
   break;
  sprintf(fw_name, "%s-%d.fw", brcms_firmwares[i],
   UCODE_LOADER_API_VER);
  status = request_firmware(&wl->fw.fw_bin[i], fw_name, device);
  if (status) {
   wiphy_err(wl->wiphy, "%s: fail to load firmware %s\n",
      KBUILD_MODNAME, fw_name);
   return status;
  }
  sprintf(fw_name, "%s_hdr-%d.fw", brcms_firmwares[i],
   UCODE_LOADER_API_VER);
  status = request_firmware(&wl->fw.fw_hdr[i], fw_name, device);
  if (status) {
   wiphy_err(wl->wiphy, "%s: fail to load firmware %s\n",
      KBUILD_MODNAME, fw_name);
   return status;
  }
  wl->fw.hdr_num_entries[i] =
      wl->fw.fw_hdr[i]->size / (sizeof(struct firmware_hdr));
 }
 wl->fw.fw_cnt = i;
 status = brcms_ucode_data_init(wl, &wl->ucode);
 brcms_release_fw(wl);
 return status;
}
