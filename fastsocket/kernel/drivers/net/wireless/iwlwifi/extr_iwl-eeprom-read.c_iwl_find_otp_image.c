
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iwl_trans {int dev; TYPE_1__* cfg; } ;
typedef scalar_t__ __le16 ;
struct TYPE_4__ {int max_ll_items; } ;
struct TYPE_3__ {TYPE_2__* base_params; } ;


 int EINVAL ;
 int IWL_DEBUG_EEPROM (int ,char*,...) ;
 scalar_t__ iwl_is_otp_empty (struct iwl_trans*) ;
 scalar_t__ iwl_read_otp_word (struct iwl_trans*,int,scalar_t__*) ;
 int iwl_set_otp_access_absolute (struct iwl_trans*) ;
 int le16_to_cpu (scalar_t__) ;

__attribute__((used)) static int iwl_find_otp_image(struct iwl_trans *trans,
     u16 *validblockaddr)
{
 u16 next_link_addr = 0, valid_addr;
 __le16 link_value = 0;
 int usedblocks = 0;


 iwl_set_otp_access_absolute(trans);


 if (iwl_is_otp_empty(trans))
  return -EINVAL;






 do {



  valid_addr = next_link_addr;
  next_link_addr = le16_to_cpu(link_value) * sizeof(u16);
  IWL_DEBUG_EEPROM(trans->dev, "OTP blocks %d addr 0x%x\n",
     usedblocks, next_link_addr);
  if (iwl_read_otp_word(trans, next_link_addr, &link_value))
   return -EINVAL;
  if (!link_value) {





   *validblockaddr = valid_addr;

   *validblockaddr += 2;
   return 0;
  }

  usedblocks++;
 } while (usedblocks <= trans->cfg->base_params->max_ll_items);


 IWL_DEBUG_EEPROM(trans->dev, "OTP has no valid blocks\n");
 return -EINVAL;
}
