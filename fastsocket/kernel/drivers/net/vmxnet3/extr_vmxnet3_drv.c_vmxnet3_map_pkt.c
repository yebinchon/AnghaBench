
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int gen; void* addr; } ;
union Vmxnet3_GenericDesc {void** dword; TYPE_2__ txd; } ;
typedef int u32 ;
struct TYPE_8__ {int gen; int next2fill; union Vmxnet3_GenericDesc* base; } ;
struct TYPE_6__ {scalar_t__ basePA; } ;
struct vmxnet3_tx_queue {TYPE_3__ tx_ring; struct vmxnet3_tx_buf_info* buf_info; TYPE_1__ data_ring; } ;
struct vmxnet3_tx_ctx {int copy_size; union Vmxnet3_GenericDesc* sop_txd; union Vmxnet3_GenericDesc* eop_txd; } ;
struct vmxnet3_tx_buf_info {int len; int sop_idx; struct sk_buff* skb; scalar_t__ dma_addr; int map_type; } ;
struct vmxnet3_adapter {int netdev; TYPE_5__* pdev; } ;
struct skb_frag_struct {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct pci_dev {int dummy; } ;
struct Vmxnet3_TxDataDesc {int dummy; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int nr_frags; struct skb_frag_struct* frags; } ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int PCI_DMA_TODEVICE ;
 int VMXNET3_MAP_NONE ;
 int VMXNET3_MAP_PAGE ;
 int VMXNET3_MAP_SINGLE ;
 int VMXNET3_MAX_TX_BUF_SIZE ;
 int VMXNET3_TXD_GEN_SHIFT ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (scalar_t__) ;
 void* le32_to_cpu (void*) ;
 int le64_to_cpu (void*) ;
 int netdev_dbg (int ,char*,int,int ,void*,void*) ;
 scalar_t__ pci_map_single (TYPE_5__*,scalar_t__,int,int ) ;
 scalar_t__ skb_frag_dma_map (int *,struct skb_frag_struct const*,unsigned long,int,int ) ;
 int skb_frag_size (struct skb_frag_struct const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 int vmxnet3_cmd_ring_adv_next2fill (TYPE_3__*) ;

__attribute__((used)) static void
vmxnet3_map_pkt(struct sk_buff *skb, struct vmxnet3_tx_ctx *ctx,
  struct vmxnet3_tx_queue *tq, struct pci_dev *pdev,
  struct vmxnet3_adapter *adapter)
{
 u32 dw2, len;
 unsigned long buf_offset;
 int i;
 union Vmxnet3_GenericDesc *gdesc;
 struct vmxnet3_tx_buf_info *tbi = ((void*)0);

 BUG_ON(ctx->copy_size > skb_headlen(skb));


 dw2 = (tq->tx_ring.gen ^ 0x1) << VMXNET3_TXD_GEN_SHIFT;

 ctx->sop_txd = tq->tx_ring.base + tq->tx_ring.next2fill;
 gdesc = ctx->sop_txd;


 if (ctx->copy_size) {
  ctx->sop_txd->txd.addr = cpu_to_le64(tq->data_ring.basePA +
     tq->tx_ring.next2fill *
     sizeof(struct Vmxnet3_TxDataDesc));
  ctx->sop_txd->dword[2] = cpu_to_le32(dw2 | ctx->copy_size);
  ctx->sop_txd->dword[3] = 0;

  tbi = tq->buf_info + tq->tx_ring.next2fill;
  tbi->map_type = VMXNET3_MAP_NONE;

  netdev_dbg(adapter->netdev,
   "txd[%u]: 0x%Lx 0x%x 0x%x\n",
   tq->tx_ring.next2fill,
   le64_to_cpu(ctx->sop_txd->txd.addr),
   ctx->sop_txd->dword[2], ctx->sop_txd->dword[3]);
  vmxnet3_cmd_ring_adv_next2fill(&tq->tx_ring);


  dw2 = tq->tx_ring.gen << VMXNET3_TXD_GEN_SHIFT;
 }


 len = skb_headlen(skb) - ctx->copy_size;
 buf_offset = ctx->copy_size;
 while (len) {
  u32 buf_size;

  if (len < VMXNET3_MAX_TX_BUF_SIZE) {
   buf_size = len;
   dw2 |= len;
  } else {
   buf_size = VMXNET3_MAX_TX_BUF_SIZE;

  }

  tbi = tq->buf_info + tq->tx_ring.next2fill;
  tbi->map_type = VMXNET3_MAP_SINGLE;
  tbi->dma_addr = pci_map_single(adapter->pdev,
    skb->data + buf_offset, buf_size,
    PCI_DMA_TODEVICE);

  tbi->len = buf_size;

  gdesc = tq->tx_ring.base + tq->tx_ring.next2fill;
  BUG_ON(gdesc->txd.gen == tq->tx_ring.gen);

  gdesc->txd.addr = cpu_to_le64(tbi->dma_addr);
  gdesc->dword[2] = cpu_to_le32(dw2);
  gdesc->dword[3] = 0;

  netdev_dbg(adapter->netdev,
   "txd[%u]: 0x%Lx 0x%x 0x%x\n",
   tq->tx_ring.next2fill, le64_to_cpu(gdesc->txd.addr),
   le32_to_cpu(gdesc->dword[2]), gdesc->dword[3]);
  vmxnet3_cmd_ring_adv_next2fill(&tq->tx_ring);
  dw2 = tq->tx_ring.gen << VMXNET3_TXD_GEN_SHIFT;

  len -= buf_size;
  buf_offset += buf_size;
 }

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const struct skb_frag_struct *frag = &skb_shinfo(skb)->frags[i];
  u32 buf_size;

  buf_offset = 0;
  len = skb_frag_size(frag);
  while (len) {
   tbi = tq->buf_info + tq->tx_ring.next2fill;
   if (len < VMXNET3_MAX_TX_BUF_SIZE) {
    buf_size = len;
    dw2 |= len;
   } else {
    buf_size = VMXNET3_MAX_TX_BUF_SIZE;

   }
   tbi->map_type = VMXNET3_MAP_PAGE;
   tbi->dma_addr = skb_frag_dma_map(&adapter->pdev->dev, frag,
        buf_offset, buf_size,
        DMA_TO_DEVICE);

   tbi->len = buf_size;

   gdesc = tq->tx_ring.base + tq->tx_ring.next2fill;
   BUG_ON(gdesc->txd.gen == tq->tx_ring.gen);

   gdesc->txd.addr = cpu_to_le64(tbi->dma_addr);
   gdesc->dword[2] = cpu_to_le32(dw2);
   gdesc->dword[3] = 0;

   netdev_dbg(adapter->netdev,
    "txd[%u]: 0x%llu %u %u\n",
    tq->tx_ring.next2fill, le64_to_cpu(gdesc->txd.addr),
    le32_to_cpu(gdesc->dword[2]), gdesc->dword[3]);
   vmxnet3_cmd_ring_adv_next2fill(&tq->tx_ring);
   dw2 = tq->tx_ring.gen << VMXNET3_TXD_GEN_SHIFT;

   len -= buf_size;
   buf_offset += buf_size;
  }
 }

 ctx->eop_txd = gdesc;


 tbi->skb = skb;
 tbi->sop_idx = ctx->sop_txd - tq->tx_ring.base;
}
