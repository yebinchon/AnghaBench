
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpsc_port_info {int BRG_BCR_m; scalar_t__ brg_base; scalar_t__ mirror_regs; scalar_t__ brg_can_tune; } ;


 scalar_t__ BRG_BCR ;
 scalar_t__ BRG_BTR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_brg_init(struct mpsc_port_info *pi, u32 clk_src)
{
 u32 v;

 v = (pi->mirror_regs) ? pi->BRG_BCR_m : readl(pi->brg_base + BRG_BCR);
 v = (v & ~(0xf << 18)) | ((clk_src & 0xf) << 18);

 if (pi->brg_can_tune)
  v &= ~(1 << 25);

 if (pi->mirror_regs)
  pi->BRG_BCR_m = v;
 writel(v, pi->brg_base + BRG_BCR);

 writel(readl(pi->brg_base + BRG_BTR) & 0xffff0000,
  pi->brg_base + BRG_BTR);
}
