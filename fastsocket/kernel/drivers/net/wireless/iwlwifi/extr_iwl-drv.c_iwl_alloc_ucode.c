
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_firmware_pieces {int dummy; } ;
struct TYPE_4__ {TYPE_1__* img; } ;
struct iwl_drv {TYPE_2__ fw; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_3__ {int * sec; } ;


 int ENOMEM ;
 int IWL_UCODE_SECTION_MAX ;
 int get_sec (struct iwl_firmware_pieces*,int,int) ;
 scalar_t__ get_sec_size (struct iwl_firmware_pieces*,int,int) ;
 scalar_t__ iwl_alloc_fw_desc (struct iwl_drv*,int *,int ) ;

__attribute__((used)) static int iwl_alloc_ucode(struct iwl_drv *drv,
      struct iwl_firmware_pieces *pieces,
      enum iwl_ucode_type type)
{
 int i;
 for (i = 0;
      i < IWL_UCODE_SECTION_MAX && get_sec_size(pieces, type, i);
      i++)
  if (iwl_alloc_fw_desc(drv, &(drv->fw.img[type].sec[i]),
          get_sec(pieces, type, i)))
   return -ENOMEM;
 return 0;
}
