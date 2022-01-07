
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int GFP_ATOMIC ;
 int iwl_pcie_rxq_alloc_rbs (struct iwl_trans*,int ) ;
 int iwl_pcie_rxq_restock (struct iwl_trans*) ;

__attribute__((used)) static void iwl_pcie_rx_replenish_now(struct iwl_trans *trans)
{
 iwl_pcie_rxq_alloc_rbs(trans, GFP_ATOMIC);

 iwl_pcie_rxq_restock(trans);
}
