
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_chan {int node; int threads; struct dma_chan* chan; } ;
struct dma_device {int cap_mask; } ;
struct dma_chan {struct dma_device* device; } ;


 int DMA_MEMCPY ;
 int DMA_PQ ;
 int DMA_XOR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dma_chan_name (struct dma_chan*) ;
 scalar_t__ dma_has_cap (int ,int ) ;
 unsigned int dmatest_add_threads (struct dmatest_chan*,int ) ;
 int dmatest_channels ;
 struct dmatest_chan* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nr_channels ;
 int pr_info (char*,unsigned int,int ) ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static int dmatest_add_channel(struct dma_chan *chan)
{
 struct dmatest_chan *dtc;
 struct dma_device *dma_dev = chan->device;
 unsigned int thread_count = 0;
 unsigned int cnt;

 dtc = kmalloc(sizeof(struct dmatest_chan), GFP_KERNEL);
 if (!dtc) {
  pr_warning("dmatest: No memory for %s\n", dma_chan_name(chan));
  return -ENOMEM;
 }

 dtc->chan = chan;
 INIT_LIST_HEAD(&dtc->threads);

 if (dma_has_cap(DMA_MEMCPY, dma_dev->cap_mask)) {
  cnt = dmatest_add_threads(dtc, DMA_MEMCPY);
  thread_count += cnt > 0 ? cnt : 0;
 }
 if (dma_has_cap(DMA_XOR, dma_dev->cap_mask)) {
  cnt = dmatest_add_threads(dtc, DMA_XOR);
  thread_count += cnt > 0 ? cnt : 0;
 }
 if (dma_has_cap(DMA_PQ, dma_dev->cap_mask)) {
  cnt = dmatest_add_threads(dtc, DMA_PQ);
  thread_count += cnt > 0 ?: 0;
 }

 pr_info("dmatest: Started %u threads using %s\n",
  thread_count, dma_chan_name(chan));

 list_add_tail(&dtc->node, &dmatest_channels);
 nr_channels++;

 return 0;
}
