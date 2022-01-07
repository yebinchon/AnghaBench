
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat2_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 scalar_t__ DMA_SUCCESS ;
 int ioat3_cleanup (struct ioat2_dma_chan*) ;
 int ioat_is_complete (struct dma_chan*,int ,int *,int *) ;
 struct ioat2_dma_chan* to_ioat2_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status
ioat3_is_complete(struct dma_chan *c, dma_cookie_t cookie,
    dma_cookie_t *done, dma_cookie_t *used)
{
 struct ioat2_dma_chan *ioat = to_ioat2_chan(c);

 if (ioat_is_complete(c, cookie, done, used) == DMA_SUCCESS)
  return DMA_SUCCESS;

 ioat3_cleanup(ioat);

 return ioat_is_complete(c, cookie, done, used);
}
