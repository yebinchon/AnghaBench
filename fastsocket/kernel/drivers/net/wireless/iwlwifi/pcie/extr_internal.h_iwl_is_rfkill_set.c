
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ;
 int iwl_read32 (struct iwl_trans*,int ) ;

__attribute__((used)) static inline bool iwl_is_rfkill_set(struct iwl_trans *trans)
{
 return !(iwl_read32(trans, CSR_GP_CNTRL) &
  CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW);
}
