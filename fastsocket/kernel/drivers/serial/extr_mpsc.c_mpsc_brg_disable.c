
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpsc_port_info {int BRG_BCR_m; scalar_t__ brg_base; scalar_t__ mirror_regs; } ;


 scalar_t__ BRG_BCR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_brg_disable(struct mpsc_port_info *pi)
{
 u32 v;

 v = (pi->mirror_regs) ? pi->BRG_BCR_m : readl(pi->brg_base + BRG_BCR);
 v &= ~(1 << 16);

 if (pi->mirror_regs)
  pi->BRG_BCR_m = v;
 writel(v, pi->brg_base + BRG_BCR);
}
