
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_dma_channel {int hw_chaining; } ;


 scalar_t__ cpu_is_mx27 () ;

__attribute__((used)) static int imx_dma_hw_chain(struct imx_dma_channel *imxdma)
{
 if (cpu_is_mx27())
  return imxdma->hw_chaining;
 else
  return 0;
}
