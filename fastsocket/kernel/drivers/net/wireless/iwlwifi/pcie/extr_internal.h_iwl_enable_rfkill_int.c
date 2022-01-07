
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_INT_BIT_RF_KILL ;
 int CSR_INT_MASK ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static inline void iwl_enable_rfkill_int(struct iwl_trans *trans)
{
 IWL_DEBUG_ISR(trans, "Enabling rfkill interrupt\n");
 iwl_write32(trans, CSR_INT_MASK, CSR_INT_BIT_RF_KILL);
}
