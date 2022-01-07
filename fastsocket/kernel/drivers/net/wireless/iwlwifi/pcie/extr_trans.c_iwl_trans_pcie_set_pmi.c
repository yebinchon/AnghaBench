
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_TPOWER_PMI ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void iwl_trans_pcie_set_pmi(struct iwl_trans *trans, bool state)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (state)
  set_bit(STATUS_TPOWER_PMI, &trans_pcie->status);
 else
  clear_bit(STATUS_TPOWER_PMI, &trans_pcie->status);
}
