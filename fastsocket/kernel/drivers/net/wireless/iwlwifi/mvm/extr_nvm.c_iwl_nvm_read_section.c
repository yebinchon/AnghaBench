
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iwl_mvm {int dummy; } ;


 int IWL_ERR (struct iwl_mvm*,char*,int,int,int) ;
 int IWL_INFO (struct iwl_mvm*,char*,int) ;
 int IWL_NVM_DEFAULT_CHUNK_SIZE ;
 int iwl_nvm_read_chunk (struct iwl_mvm*,int,int,int,int *) ;

__attribute__((used)) static int iwl_nvm_read_section(struct iwl_mvm *mvm, u16 section,
    u8 *data)
{
 u16 length, offset = 0;
 int ret;


 length = IWL_NVM_DEFAULT_CHUNK_SIZE;

 ret = length;


 while (ret == length) {
  ret = iwl_nvm_read_chunk(mvm, section, offset, length, data);
  if (ret < 0) {
   IWL_ERR(mvm,
    "Cannot read NVM from section %d offset %d, length %d\n",
    section, offset, length);
   return ret;
  }
  offset += ret;
 }

 IWL_INFO(mvm, "NVM section %d read completed\n", section);
 return offset;
}
