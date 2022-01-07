
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat2_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int ssize_t ;


 int ioat2_ring_active (struct ioat2_dma_chan*) ;
 int sprintf (char*,char*,int) ;
 struct ioat2_dma_chan* to_ioat2_chan (struct dma_chan*) ;

__attribute__((used)) static ssize_t ring_active_show(struct dma_chan *c, char *page)
{
 struct ioat2_dma_chan *ioat = to_ioat2_chan(c);


 return sprintf(page, "%d\n", ioat2_ring_active(ioat));
}
