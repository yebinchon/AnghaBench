
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm {int nvm_data; TYPE_3__* nvm_sections; TYPE_2__* cfg; } ;
struct TYPE_6__ {int length; int * data; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int eeprom_size; } ;


 int ARRAY_SIZE (int*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int iwl_nvm_read_section (struct iwl_mvm*,int,int *) ;
 int iwl_parse_nvm_sections (struct iwl_mvm*) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int * kmemdup (int *,int,int ) ;
 int* nvm_to_read ;

int iwl_nvm_init(struct iwl_mvm *mvm)
{
 int ret, i, section;
 u8 *nvm_buffer, *temp;


 nvm_buffer = kmalloc(mvm->cfg->base_params->eeprom_size,
        GFP_KERNEL);
 if (!nvm_buffer)
  return -ENOMEM;
 for (i = 0; i < ARRAY_SIZE(nvm_to_read); i++) {
  section = nvm_to_read[i];

  ret = iwl_nvm_read_section(mvm, section, nvm_buffer);
  if (ret < 0)
   break;
  temp = kmemdup(nvm_buffer, ret, GFP_KERNEL);
  if (!temp) {
   ret = -ENOMEM;
   break;
  }
  mvm->nvm_sections[section].data = temp;
  mvm->nvm_sections[section].length = ret;
 }
 kfree(nvm_buffer);
 if (ret < 0)
  return ret;

 ret = 0;
 mvm->nvm_data = iwl_parse_nvm_sections(mvm);

 return ret;
}
