
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int trans; } ;


 int CSR_LED_REG ;
 int CSR_LED_REG_TURN_ON ;
 int iwl_write32 (int ,int ,int ) ;

__attribute__((used)) static void iwl_mvm_led_enable(struct iwl_mvm *mvm)
{
 iwl_write32(mvm->trans, CSR_LED_REG, CSR_LED_REG_TURN_ON);
}
