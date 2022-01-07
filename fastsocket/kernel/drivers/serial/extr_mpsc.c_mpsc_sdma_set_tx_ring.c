
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpsc_tx_desc {int dummy; } ;
struct mpsc_port_info {scalar_t__ sdma_base; } ;


 scalar_t__ SDMA_SCTDP ;
 scalar_t__ SDMA_SFTDP ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mpsc_sdma_set_tx_ring(struct mpsc_port_info *pi,
  struct mpsc_tx_desc *txre_p)
{
 writel((u32)txre_p, pi->sdma_base + SDMA_SFTDP);
 writel((u32)txre_p, pi->sdma_base + SDMA_SCTDP);
}
