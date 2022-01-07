
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int dma_addr_t ;


 int DAR ;
 int channel_readl (struct dw_dma_chan*,int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

inline dma_addr_t dw_dma_get_dst_addr(struct dma_chan *chan)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 return channel_readl(dwc, DAR);
}
