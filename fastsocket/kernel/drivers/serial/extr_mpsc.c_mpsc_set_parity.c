
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int line; } ;
struct mpsc_port_info {int MPSC_CHR_2_m; scalar_t__ mpsc_base; scalar_t__ mirror_regs; TYPE_1__ port; } ;


 scalar_t__ MPSC_CHR_2 ;
 int pr_debug (char*,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_set_parity(struct mpsc_port_info *pi, u32 p)
{
 u32 v;

 pr_debug("mpsc_set_parity[%d]: parity bits: 0x%x\n", pi->port.line, p);

 v = (pi->mirror_regs) ? pi->MPSC_CHR_2_m :
  readl(pi->mpsc_base + MPSC_CHR_2);

 p &= 0x3;
 v = (v & ~0xc000c) | (p << 18) | (p << 2);

 if (pi->mirror_regs)
  pi->MPSC_CHR_2_m = v;
 writel(v, pi->mpsc_base + MPSC_CHR_2);
}
