
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat2_dma_chan {int alloc_order; } ;
struct dma_chan {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct ioat2_dma_chan* to_ioat2_chan (struct dma_chan*) ;

__attribute__((used)) static ssize_t ring_size_show(struct dma_chan *c, char *page)
{
 struct ioat2_dma_chan *ioat = to_ioat2_chan(c);

 return sprintf(page, "%d\n", (1 << ioat->alloc_order) & ~1);
}
