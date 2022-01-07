
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_nvm_section {scalar_t__ data; } ;
struct iwl_nvm_data {int dummy; } ;
struct iwl_mvm {int cfg; TYPE_1__* trans; struct iwl_nvm_section* nvm_sections; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 size_t NVM_SECTION_TYPE_CALIBRATION ;
 size_t NVM_SECTION_TYPE_HW ;
 size_t NVM_SECTION_TYPE_SW ;
 scalar_t__ WARN_ON (int) ;
 struct iwl_nvm_data* iwl_parse_nvm_data (int ,int ,int const*,int const*,int const*) ;

__attribute__((used)) static struct iwl_nvm_data *
iwl_parse_nvm_sections(struct iwl_mvm *mvm)
{
 struct iwl_nvm_section *sections = mvm->nvm_sections;
 const __le16 *hw, *sw, *calib;


 if (!mvm->nvm_sections[NVM_SECTION_TYPE_SW].data ||
     !mvm->nvm_sections[NVM_SECTION_TYPE_HW].data) {
  IWL_ERR(mvm, "Can't parse empty NVM sections\n");
  return ((void*)0);
 }

 if (WARN_ON(!mvm->cfg))
  return ((void*)0);

 hw = (const __le16 *)sections[NVM_SECTION_TYPE_HW].data;
 sw = (const __le16 *)sections[NVM_SECTION_TYPE_SW].data;
 calib = (const __le16 *)sections[NVM_SECTION_TYPE_CALIBRATION].data;
 return iwl_parse_nvm_data(mvm->trans->dev, mvm->cfg, hw, sw, calib);
}
