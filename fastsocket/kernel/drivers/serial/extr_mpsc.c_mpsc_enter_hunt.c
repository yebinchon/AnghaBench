
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct mpsc_port_info {int MPSC_CHR_2_m; scalar_t__ mpsc_base; scalar_t__ mirror_regs; TYPE_1__ port; } ;


 scalar_t__ MPSC_CHR_2 ;
 int MPSC_CHR_2_EH ;
 int pr_debug (char*,int ) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_enter_hunt(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_enter_hunt[%d]: Hunting...\n", pi->port.line);

 if (pi->mirror_regs) {
  writel(pi->MPSC_CHR_2_m | MPSC_CHR_2_EH,
   pi->mpsc_base + MPSC_CHR_2);

  udelay(100);
 } else {
  writel(readl(pi->mpsc_base + MPSC_CHR_2) | MPSC_CHR_2_EH,
    pi->mpsc_base + MPSC_CHR_2);

  while (readl(pi->mpsc_base + MPSC_CHR_2) & MPSC_CHR_2_EH)
   udelay(10);
 }
}
