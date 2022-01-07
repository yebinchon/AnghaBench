
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct txdb {TYPE_2__* wptr; } ;
struct txd_desc {struct pbl* pbl; } ;
struct skb_frag_struct {scalar_t__ size; int page_offset; int page; } ;
struct sk_buff {int data; scalar_t__ data_len; scalar_t__ len; } ;
struct pbl {void* pa_hi; void* pa_lo; void* len; } ;
struct bdx_priv {int pdev; struct txdb txdb; } ;
struct TYPE_8__ {int nr_frags; struct skb_frag_struct* frags; } ;
struct TYPE_7__ {scalar_t__ bytes; } ;
struct TYPE_5__ {struct sk_buff* skb; int dma; } ;
struct TYPE_6__ {TYPE_1__ addr; scalar_t__ len; } ;


 void* CPU_CHIP_SWAP32 (scalar_t__) ;
 int DBG (char*,void*) ;
 scalar_t__ H32_64 (int ) ;
 scalar_t__ L32_64 (int ) ;
 int PCI_DMA_TODEVICE ;
 int bdx_tx_db_inc_wptr (struct txdb*) ;
 int pci_map_page (int ,int ,int ,scalar_t__,int ) ;
 int pci_map_single (int ,int ,scalar_t__,int ) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 TYPE_3__* txd_sizes ;

__attribute__((used)) static inline void
bdx_tx_map_skb(struct bdx_priv *priv, struct sk_buff *skb,
        struct txd_desc *txdd)
{
 struct txdb *db = &priv->txdb;
 struct pbl *pbl = &txdd->pbl[0];
 int nr_frags = skb_shinfo(skb)->nr_frags;
 int i;

 db->wptr->len = skb->len - skb->data_len;
 db->wptr->addr.dma = pci_map_single(priv->pdev, skb->data,
         db->wptr->len, PCI_DMA_TODEVICE);
 pbl->len = CPU_CHIP_SWAP32(db->wptr->len);
 pbl->pa_lo = CPU_CHIP_SWAP32(L32_64(db->wptr->addr.dma));
 pbl->pa_hi = CPU_CHIP_SWAP32(H32_64(db->wptr->addr.dma));
 DBG("=== pbl   len: 0x%x ================\n", pbl->len);
 DBG("=== pbl pa_lo: 0x%x ================\n", pbl->pa_lo);
 DBG("=== pbl pa_hi: 0x%x ================\n", pbl->pa_hi);
 bdx_tx_db_inc_wptr(db);

 for (i = 0; i < nr_frags; i++) {
  struct skb_frag_struct *frag;

  frag = &skb_shinfo(skb)->frags[i];
  db->wptr->len = frag->size;
  db->wptr->addr.dma =
      pci_map_page(priv->pdev, frag->page, frag->page_offset,
     frag->size, PCI_DMA_TODEVICE);

  pbl++;
  pbl->len = CPU_CHIP_SWAP32(db->wptr->len);
  pbl->pa_lo = CPU_CHIP_SWAP32(L32_64(db->wptr->addr.dma));
  pbl->pa_hi = CPU_CHIP_SWAP32(H32_64(db->wptr->addr.dma));
  bdx_tx_db_inc_wptr(db);
 }


 db->wptr->len = -txd_sizes[nr_frags].bytes;
 db->wptr->addr.skb = skb;
 bdx_tx_db_inc_wptr(db);
}
