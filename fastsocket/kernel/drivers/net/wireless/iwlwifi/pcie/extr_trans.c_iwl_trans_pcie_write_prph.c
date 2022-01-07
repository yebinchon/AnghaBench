
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int HBUS_TARG_PRPH_WADDR ;
 int HBUS_TARG_PRPH_WDAT ;
 int iwl_trans_pcie_write32 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static void iwl_trans_pcie_write_prph(struct iwl_trans *trans, u32 addr,
          u32 val)
{
 iwl_trans_pcie_write32(trans, HBUS_TARG_PRPH_WADDR,
          ((addr & 0x000FFFFF) | (3 << 24)));
 iwl_trans_pcie_write32(trans, HBUS_TARG_PRPH_WDAT, val);
}
