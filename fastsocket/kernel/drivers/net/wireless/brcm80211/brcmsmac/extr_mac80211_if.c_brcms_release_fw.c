
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw_hdr; int * fw_bin; } ;
struct brcms_info {TYPE_1__ fw; } ;


 int MAX_FW_IMAGES ;
 int release_firmware (int ) ;

__attribute__((used)) static void brcms_release_fw(struct brcms_info *wl)
{
 int i;
 for (i = 0; i < MAX_FW_IMAGES; i++) {
  release_firmware(wl->fw.fw_bin[i]);
  release_firmware(wl->fw.fw_hdr[i]);
 }
}
