
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnic_wq {int dummy; } ;
struct sk_buff {int dummy; } ;
struct enic {int pdev; } ;
struct TYPE_3__ {scalar_t__ size; int page_offset; int page; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_4__ {TYPE_1__* frags; } ;


 int PCI_DMA_TODEVICE ;
 int enic_queue_wq_desc_cont (struct vnic_wq*,struct sk_buff*,int ,scalar_t__,int,int) ;
 int pci_map_page (int ,int ,int ,scalar_t__,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void enic_queue_wq_skb_cont(struct enic *enic,
 struct vnic_wq *wq, struct sk_buff *skb,
 unsigned int len_left, int loopback)
{
 skb_frag_t *frag;


 for (frag = skb_shinfo(skb)->frags; len_left; frag++) {
  len_left -= frag->size;
  enic_queue_wq_desc_cont(wq, skb,
   pci_map_page(enic->pdev, frag->page,
    frag->page_offset, frag->size,
    PCI_DMA_TODEVICE),
   frag->size,
   (len_left == 0),
   loopback);
 }
}
