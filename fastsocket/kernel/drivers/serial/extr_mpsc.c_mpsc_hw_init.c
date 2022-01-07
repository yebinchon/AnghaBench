
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int line; } ;
struct mpsc_port_info {int mpsc_max_idle; scalar_t__ mpsc_base; scalar_t__ MPSC_CHR_2_m; scalar_t__ MPSC_CHR_1_m; scalar_t__ mirror_regs; int default_baud; TYPE_2__* shared_regs; TYPE_1__ port; } ;
struct TYPE_4__ {int MPSC_MRR_m; int MPSC_RCRR_m; int MPSC_TCRR_m; scalar_t__ mpsc_routing_base; } ;


 scalar_t__ MPSC_CHR_1 ;
 scalar_t__ MPSC_CHR_10 ;
 scalar_t__ MPSC_CHR_2 ;
 scalar_t__ MPSC_CHR_3 ;
 scalar_t__ MPSC_CHR_4 ;
 scalar_t__ MPSC_CHR_5 ;
 scalar_t__ MPSC_CHR_6 ;
 scalar_t__ MPSC_CHR_7 ;
 scalar_t__ MPSC_CHR_8 ;
 scalar_t__ MPSC_CHR_9 ;
 scalar_t__ MPSC_MMCRH ;
 scalar_t__ MPSC_MMCRL ;
 scalar_t__ MPSC_MRR ;
 scalar_t__ MPSC_RCRR ;
 scalar_t__ MPSC_TCRR ;
 int mpsc_set_baudrate (struct mpsc_port_info*,int ) ;
 int pr_debug (char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_hw_init(struct mpsc_port_info *pi)
{
 u32 v;

 pr_debug("mpsc_hw_init[%d]: Initializing hardware\n", pi->port.line);


 if (pi->mirror_regs) {
  v = pi->shared_regs->MPSC_MRR_m;
  v &= ~0x1c7;
  pi->shared_regs->MPSC_MRR_m = v;
  writel(v, pi->shared_regs->mpsc_routing_base + MPSC_MRR);

  v = pi->shared_regs->MPSC_RCRR_m;
  v = (v & ~0xf0f) | 0x100;
  pi->shared_regs->MPSC_RCRR_m = v;
  writel(v, pi->shared_regs->mpsc_routing_base + MPSC_RCRR);

  v = pi->shared_regs->MPSC_TCRR_m;
  v = (v & ~0xf0f) | 0x100;
  pi->shared_regs->MPSC_TCRR_m = v;
  writel(v, pi->shared_regs->mpsc_routing_base + MPSC_TCRR);
 } else {
  v = readl(pi->shared_regs->mpsc_routing_base + MPSC_MRR);
  v &= ~0x1c7;
  writel(v, pi->shared_regs->mpsc_routing_base + MPSC_MRR);

  v = readl(pi->shared_regs->mpsc_routing_base + MPSC_RCRR);
  v = (v & ~0xf0f) | 0x100;
  writel(v, pi->shared_regs->mpsc_routing_base + MPSC_RCRR);

  v = readl(pi->shared_regs->mpsc_routing_base + MPSC_TCRR);
  v = (v & ~0xf0f) | 0x100;
  writel(v, pi->shared_regs->mpsc_routing_base + MPSC_TCRR);
 }


 writel(0x000004c4, pi->mpsc_base + MPSC_MMCRL);


 writel(0x04400400, pi->mpsc_base + MPSC_MMCRH);
 mpsc_set_baudrate(pi, pi->default_baud);

 if (pi->mirror_regs) {
  pi->MPSC_CHR_1_m = 0;
  pi->MPSC_CHR_2_m = 0;
 }
 writel(0, pi->mpsc_base + MPSC_CHR_1);
 writel(0, pi->mpsc_base + MPSC_CHR_2);
 writel(pi->mpsc_max_idle, pi->mpsc_base + MPSC_CHR_3);
 writel(0, pi->mpsc_base + MPSC_CHR_4);
 writel(0, pi->mpsc_base + MPSC_CHR_5);
 writel(0, pi->mpsc_base + MPSC_CHR_6);
 writel(0, pi->mpsc_base + MPSC_CHR_7);
 writel(0, pi->mpsc_base + MPSC_CHR_8);
 writel(0, pi->mpsc_base + MPSC_CHR_9);
 writel(0, pi->mpsc_base + MPSC_CHR_10);
}
