
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {int dummy; } ;
struct fw_img {TYPE_1__* sec; } ;
struct TYPE_2__ {int data; } ;


 int CSR_RESET ;
 int IWL_UCODE_SECTION_MAX ;
 int iwl_pcie_load_section (struct iwl_trans*,int,TYPE_1__*) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static int iwl_pcie_load_given_ucode(struct iwl_trans *trans,
    const struct fw_img *image)
{
 int i, ret = 0;

 for (i = 0; i < IWL_UCODE_SECTION_MAX; i++) {
  if (!image->sec[i].data)
   break;

  ret = iwl_pcie_load_section(trans, i, &image->sec[i]);
  if (ret)
   return ret;
 }


 iwl_write32(trans, CSR_RESET, 0);

 return 0;
}
