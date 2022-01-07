
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int fw_key_table; int mutex; } ;


 int STA_KEY_IDX_INVALID ;
 int STA_KEY_MAX_NUM ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_set_fw_key_idx(struct iwl_mvm *mvm)
{
 int i;

 lockdep_assert_held(&mvm->mutex);

 i = find_first_zero_bit(mvm->fw_key_table, STA_KEY_MAX_NUM);

 if (i == STA_KEY_MAX_NUM)
  return STA_KEY_IDX_INVALID;

 __set_bit(i, mvm->fw_key_table);

 return i;
}
