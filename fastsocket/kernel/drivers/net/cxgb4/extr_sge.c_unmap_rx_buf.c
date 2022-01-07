
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {size_t cidx; size_t size; int avail; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {int * page; } ;
struct adapter {int pdev_dev; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int get_buf_addr (struct rx_sw_desc*) ;
 int get_buf_size (struct rx_sw_desc*) ;
 scalar_t__ is_buf_mapped (struct rx_sw_desc*) ;

__attribute__((used)) static void unmap_rx_buf(struct adapter *adap, struct sge_fl *q)
{
 struct rx_sw_desc *d = &q->sdesc[q->cidx];

 if (is_buf_mapped(d))
  dma_unmap_page(adap->pdev_dev, get_buf_addr(d),
          get_buf_size(d), PCI_DMA_FROMDEVICE);
 d->page = ((void*)0);
 if (++q->cidx == q->size)
  q->cidx = 0;
 q->avail--;
}
