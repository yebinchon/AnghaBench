
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int rev_id; TYPE_1__* pci_dev; void* hw_wa_rev; void* hw_rev; } ;
struct TYPE_2__ {int revision; } ;


 int CSR_HW_REV ;
 int CSR_HW_REV_WA_REG ;
 int D_INFO (char*,int ) ;
 void* _il_rd (struct il_priv*,int ) ;

__attribute__((used)) static void
il4965_hw_detect(struct il_priv *il)
{
 il->hw_rev = _il_rd(il, CSR_HW_REV);
 il->hw_wa_rev = _il_rd(il, CSR_HW_REV_WA_REG);
 il->rev_id = il->pci_dev->revision;
 D_INFO("HW Revision ID = 0x%X\n", il->rev_id);
}
