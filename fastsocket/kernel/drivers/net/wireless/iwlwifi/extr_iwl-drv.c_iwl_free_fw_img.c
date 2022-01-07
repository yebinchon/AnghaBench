
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_drv {int dummy; } ;
struct fw_img {int * sec; } ;


 int IWL_UCODE_SECTION_MAX ;
 int iwl_free_fw_desc (struct iwl_drv*,int *) ;

__attribute__((used)) static void iwl_free_fw_img(struct iwl_drv *drv, struct fw_img *img)
{
 int i;
 for (i = 0; i < IWL_UCODE_SECTION_MAX; i++)
  iwl_free_fw_desc(drv, &img->sec[i]);
}
