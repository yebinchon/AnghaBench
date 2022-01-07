
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnx2_napi {scalar_t__ last_status_idx; } ;
struct bnx2 {scalar_t__ idle_chk_status_idx; TYPE_1__* irq_tbl; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_2__ {int vector; } ;


 int BNX2_PCICFG_MSI_CONTROL ;
 int BNX2_PCICFG_MSI_CONTROL_ENABLE ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 scalar_t__ bnx2_has_work (struct bnx2_napi*) ;
 int bnx2_msi (int ,struct bnx2_napi*) ;

__attribute__((used)) static void
bnx2_chk_missed_msi(struct bnx2 *bp)
{
 struct bnx2_napi *bnapi = &bp->bnx2_napi[0];
 u32 msi_ctrl;

 if (bnx2_has_work(bnapi)) {
  msi_ctrl = BNX2_RD(bp, BNX2_PCICFG_MSI_CONTROL);
  if (!(msi_ctrl & BNX2_PCICFG_MSI_CONTROL_ENABLE))
   return;

  if (bnapi->last_status_idx == bp->idle_chk_status_idx) {
   BNX2_WR(bp, BNX2_PCICFG_MSI_CONTROL, msi_ctrl &
    ~BNX2_PCICFG_MSI_CONTROL_ENABLE);
   BNX2_WR(bp, BNX2_PCICFG_MSI_CONTROL, msi_ctrl);
   bnx2_msi(bp->irq_tbl[0].vector, bnapi);
  }
 }

 bp->idle_chk_status_idx = bnapi->last_status_idx;
}
