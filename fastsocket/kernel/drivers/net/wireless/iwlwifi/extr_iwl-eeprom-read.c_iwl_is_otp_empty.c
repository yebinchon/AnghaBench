
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans {int dummy; } ;
typedef int __le16 ;


 int IWL_ERR (struct iwl_trans*,char*) ;
 int iwl_read_otp_word (struct iwl_trans*,int ,int *) ;

__attribute__((used)) static bool iwl_is_otp_empty(struct iwl_trans *trans)
{
 u16 next_link_addr = 0;
 __le16 link_value;
 bool is_empty = 0;


 if (!iwl_read_otp_word(trans, next_link_addr, &link_value)) {
  if (!link_value) {
   IWL_ERR(trans, "OTP is empty\n");
   is_empty = 1;
  }
 } else {
  IWL_ERR(trans, "Unable to read first block of OTP list.\n");
  is_empty = 1;
 }

 return is_empty;
}
