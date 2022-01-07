
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_shared_info {size_t nr_frags; TYPE_1__* frags; } ;
struct sk_buff {int data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int size; int page_offset; int page; } ;
typedef TYPE_1__ skb_frag_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int dma_map_page (struct device*,int ,int ,int ,int ) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int skb_headlen (struct sk_buff const*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static int map_skb(struct device *dev, const struct sk_buff *skb,
     dma_addr_t *addr)
{
 const skb_frag_t *fp, *end;
 const struct skb_shared_info *si;

 *addr = dma_map_single(dev, skb->data, skb_headlen(skb), DMA_TO_DEVICE);
 if (dma_mapping_error(dev, *addr))
  goto out_err;

 si = skb_shinfo(skb);
 end = &si->frags[si->nr_frags];

 for (fp = si->frags; fp < end; fp++) {
  *++addr = dma_map_page(dev, fp->page, fp->page_offset, fp->size,
           DMA_TO_DEVICE);
  if (dma_mapping_error(dev, *addr))
   goto unwind;
 }
 return 0;

unwind:
 while (fp-- > si->frags)
  dma_unmap_page(dev, *--addr, fp->size, DMA_TO_DEVICE);

 dma_unmap_single(dev, addr[-1], skb_headlen(skb), DMA_TO_DEVICE);
out_err:
 return -ENOMEM;
}
