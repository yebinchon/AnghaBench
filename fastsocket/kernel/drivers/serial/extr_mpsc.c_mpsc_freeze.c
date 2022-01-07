
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int line; } ;
struct mpsc_port_info {scalar_t__ mpsc_base; int MPSC_MPCR_m; scalar_t__ mirror_regs; TYPE_1__ port; } ;


 scalar_t__ MPSC_MPCR ;
 int MPSC_MPCR_FRZ ;
 int pr_debug (char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mpsc_freeze(struct mpsc_port_info *pi)
{
 u32 v;

 pr_debug("mpsc_freeze[%d]: Freezing\n", pi->port.line);

 v = (pi->mirror_regs) ? pi->MPSC_MPCR_m :
  readl(pi->mpsc_base + MPSC_MPCR);
 v |= MPSC_MPCR_FRZ;

 if (pi->mirror_regs)
  pi->MPSC_MPCR_m = v;
 writel(v, pi->mpsc_base + MPSC_MPCR);
}
