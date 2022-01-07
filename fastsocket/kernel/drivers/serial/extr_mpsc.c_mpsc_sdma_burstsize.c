
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int line; } ;
struct mpsc_port_info {scalar_t__ sdma_base; TYPE_1__ port; } ;


 scalar_t__ SDMA_SDC ;
 int pr_debug (char*,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_sdma_burstsize(struct mpsc_port_info *pi, u32 burst_size)
{
 u32 v;

 pr_debug("mpsc_sdma_burstsize[%d]: burst_size: %d\n",
   pi->port.line, burst_size);

 burst_size >>= 3;

 if (burst_size < 2)
  v = 0x0;
 else if (burst_size < 4)
  v = 0x1;
 else if (burst_size < 8)
  v = 0x2;
 else
  v = 0x3;

 writel((readl(pi->sdma_base + SDMA_SDC) & (0x3 << 12)) | (v << 12),
  pi->sdma_base + SDMA_SDC);
}
