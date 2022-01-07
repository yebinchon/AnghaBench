
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mpsc_rx_desc {int dummy; } ;
struct TYPE_2__ {int line; } ;
struct mpsc_port_info {scalar_t__ sdma_base; TYPE_1__ port; } ;


 scalar_t__ SDMA_SCRDP ;
 int pr_debug (char*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mpsc_sdma_set_rx_ring(struct mpsc_port_info *pi,
  struct mpsc_rx_desc *rxre_p)
{
 pr_debug("mpsc_sdma_set_rx_ring[%d]: rxre_p: 0x%x\n",
  pi->port.line, (u32)rxre_p);

 writel((u32)rxre_p, pi->sdma_base + SDMA_SCRDP);
}
