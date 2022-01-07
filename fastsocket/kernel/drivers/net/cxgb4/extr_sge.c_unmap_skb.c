
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_shared_info {size_t nr_frags; TYPE_1__* frags; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int size; } ;
typedef TYPE_1__ skb_frag_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int skb_headlen (struct sk_buff const*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static void unmap_skb(struct device *dev, const struct sk_buff *skb,
        const dma_addr_t *addr)
{
 const skb_frag_t *fp, *end;
 const struct skb_shared_info *si;

 dma_unmap_single(dev, *addr++, skb_headlen(skb), DMA_TO_DEVICE);

 si = skb_shinfo(skb);
 end = &si->frags[si->nr_frags];
 for (fp = si->frags; fp < end; fp++)
  dma_unmap_page(dev, *addr++, fp->size, DMA_TO_DEVICE);
}
