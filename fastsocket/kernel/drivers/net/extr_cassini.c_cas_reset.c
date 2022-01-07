
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cas {int cas_flags; int * stat_lock; scalar_t__ regs; } ;


 int CAS_FLAG_TARGET_ABORT ;
 scalar_t__ CAS_HP_ALT_FIRMWARE ;
 scalar_t__ CAS_HP_FIRMWARE ;
 size_t N_TX_RINGS ;
 scalar_t__ REG_RX_CFG ;
 scalar_t__ REG_TX_CFG ;
 int RX_CFG_DMA_EN ;
 int TX_CFG_DMA_EN ;
 int cas_clear_mac_err (struct cas*) ;
 int cas_entropy_reset (struct cas*) ;
 int cas_global_reset (struct cas*,int) ;
 int cas_load_firmware (struct cas*,scalar_t__) ;
 int cas_mac_reset (struct cas*) ;
 int cas_mask_intr (struct cas*) ;
 scalar_t__ cas_prog_null ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cas_reset(struct cas *cp, int blkflag)
{
 u32 val;

 cas_mask_intr(cp);
 cas_global_reset(cp, blkflag);
 cas_mac_reset(cp);
 cas_entropy_reset(cp);


 val = readl(cp->regs + REG_TX_CFG);
 val &= ~TX_CFG_DMA_EN;
 writel(val, cp->regs + REG_TX_CFG);

 val = readl(cp->regs + REG_RX_CFG);
 val &= ~RX_CFG_DMA_EN;
 writel(val, cp->regs + REG_RX_CFG);


 if ((cp->cas_flags & CAS_FLAG_TARGET_ABORT) ||
     (CAS_HP_ALT_FIRMWARE == cas_prog_null)) {
  cas_load_firmware(cp, CAS_HP_FIRMWARE);
 } else {
  cas_load_firmware(cp, CAS_HP_ALT_FIRMWARE);
 }


 spin_lock(&cp->stat_lock[N_TX_RINGS]);
 cas_clear_mac_err(cp);
 spin_unlock(&cp->stat_lock[N_TX_RINGS]);
}
