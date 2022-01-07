
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ img; } ;
struct iwl_drv {TYPE_1__ fw; } ;


 int IWL_UCODE_TYPE_MAX ;
 int iwl_free_fw_img (struct iwl_drv*,scalar_t__) ;

__attribute__((used)) static void iwl_dealloc_ucode(struct iwl_drv *drv)
{
 int i;
 for (i = 0; i < IWL_UCODE_TYPE_MAX; i++)
  iwl_free_fw_img(drv, drv->fw.img + i);
}
