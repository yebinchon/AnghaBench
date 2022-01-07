
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sg_ent {void** len; void** addr; } ;
struct pci_dev {int dev; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {unsigned int nr_frags; int * frags; } ;


 int PCI_DMA_TODEVICE ;
 void* cpu_to_be32 (unsigned int) ;
 void* cpu_to_be64 (int ) ;
 int pci_map_single (struct pci_dev*,unsigned char*,unsigned int,int ) ;
 int skb_frag_dma_map (int *,int const*,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int make_sgl(const struct sk_buff *skb,
        struct sg_ent *sgp, unsigned char *start,
        unsigned int len, struct pci_dev *pdev)
{
 dma_addr_t mapping;
 unsigned int i, j = 0, nfrags;

 if (len) {
  mapping = pci_map_single(pdev, start, len, PCI_DMA_TODEVICE);
  sgp->len[0] = cpu_to_be32(len);
  sgp->addr[0] = cpu_to_be64(mapping);
  j = 1;
 }

 nfrags = skb_shinfo(skb)->nr_frags;
 for (i = 0; i < nfrags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  mapping = skb_frag_dma_map(&pdev->dev, frag, 0, skb_frag_size(frag),
        PCI_DMA_TODEVICE);
  sgp->len[j] = cpu_to_be32(skb_frag_size(frag));
  sgp->addr[j] = cpu_to_be64(mapping);
  j ^= 1;
  if (j == 0)
   ++sgp;
 }
 if (j)
  sgp->len[j] = 0;
 return ((nfrags + (len != 0)) * 3) / 2 + j;
}
