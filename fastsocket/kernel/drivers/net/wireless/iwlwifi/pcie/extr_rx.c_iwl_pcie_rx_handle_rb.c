
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iwl_txq {TYPE_2__* entries; int q; } ;
struct iwl_rxq {int lock; int rx_used; int free_count; int rx_free; } ;
struct iwl_trans_pcie {size_t cmd_queue; int rx_page_order; int n_no_reclaim_cmds; int * no_reclaim_cmds; struct iwl_txq* txq; struct iwl_rxq rxq; } ;
struct iwl_trans {int dev; int op_mode; } ;
struct TYPE_3__ {int sequence; int cmd; } ;
struct iwl_rx_packet {scalar_t__ len_n_flags; TYPE_1__ hdr; } ;
struct iwl_rx_mem_buffer {int list; int * page; int page_dma; } ;
struct iwl_rx_cmd_buffer {int _offset; int _rx_page_order; int _page_stolen; int truesize; int * _page; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_cmd_header {int dummy; } ;
struct TYPE_4__ {int * free_buf; struct iwl_device_cmd* cmd; } ;


 scalar_t__ ALIGN (int,int ) ;
 int DMA_FROM_DEVICE ;
 int FH_RSCSR_FRAME_ALIGN ;
 int FH_RSCSR_FRAME_INVALID ;
 int FH_RSCSR_FRAME_SIZE_MSK ;
 int IWL_DEBUG_RX (struct iwl_trans*,char*,int,int ,int ) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int PAGE_SIZE ;
 int SEQ_RX_FRAME ;
 int SEQ_TO_INDEX (int ) ;
 scalar_t__ WARN_ON (int) ;
 int __free_pages (int *,int) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dma_map_page (int ,int *,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_page (int ,int ,int,int ) ;
 int get_cmd_index (int *,int) ;
 int get_cmd_string (struct iwl_trans_pcie*,int ) ;
 int iwl_op_mode_rx (int ,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ;
 int iwl_pcie_hcmd_complete (struct iwl_trans*,struct iwl_rx_cmd_buffer*,int) ;
 int kfree (int *) ;
 int le16_to_cpu (int) ;
 int le32_to_cpu (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_iwlwifi_dev_rx (int ,struct iwl_trans*,struct iwl_rx_packet*,int) ;
 int trace_iwlwifi_dev_rx_data (int ,struct iwl_trans*,struct iwl_rx_packet*,int) ;

__attribute__((used)) static void iwl_pcie_rx_handle_rb(struct iwl_trans *trans,
    struct iwl_rx_mem_buffer *rxb)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rxq *rxq = &trans_pcie->rxq;
 struct iwl_txq *txq = &trans_pcie->txq[trans_pcie->cmd_queue];
 unsigned long flags;
 bool page_stolen = 0;
 int max_len = PAGE_SIZE << trans_pcie->rx_page_order;
 u32 offset = 0;

 if (WARN_ON(!rxb))
  return;

 dma_unmap_page(trans->dev, rxb->page_dma, max_len, DMA_FROM_DEVICE);

 while (offset + sizeof(u32) + sizeof(struct iwl_cmd_header) < max_len) {
  struct iwl_rx_packet *pkt;
  struct iwl_device_cmd *cmd;
  u16 sequence;
  bool reclaim;
  int index, cmd_index, err, len;
  struct iwl_rx_cmd_buffer rxcb = {
   ._offset = offset,
   ._rx_page_order = trans_pcie->rx_page_order,
   ._page = rxb->page,
   ._page_stolen = 0,
   .truesize = max_len,
  };

  pkt = rxb_addr(&rxcb);

  if (pkt->len_n_flags == cpu_to_le32(FH_RSCSR_FRAME_INVALID))
   break;

  IWL_DEBUG_RX(trans, "cmd at offset %d: %s (0x%.2x)\n",
   rxcb._offset, get_cmd_string(trans_pcie, pkt->hdr.cmd),
   pkt->hdr.cmd);

  len = le32_to_cpu(pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
  len += sizeof(u32);
  trace_iwlwifi_dev_rx(trans->dev, trans, pkt, len);
  trace_iwlwifi_dev_rx_data(trans->dev, trans, pkt, len);







  reclaim = !(pkt->hdr.sequence & SEQ_RX_FRAME);
  if (reclaim) {
   int i;

   for (i = 0; i < trans_pcie->n_no_reclaim_cmds; i++) {
    if (trans_pcie->no_reclaim_cmds[i] ==
       pkt->hdr.cmd) {
     reclaim = 0;
     break;
    }
   }
  }

  sequence = le16_to_cpu(pkt->hdr.sequence);
  index = SEQ_TO_INDEX(sequence);
  cmd_index = get_cmd_index(&txq->q, index);

  if (reclaim)
   cmd = txq->entries[cmd_index].cmd;
  else
   cmd = ((void*)0);

  err = iwl_op_mode_rx(trans->op_mode, &rxcb, cmd);

  if (reclaim) {
   kfree(txq->entries[cmd_index].free_buf);
   txq->entries[cmd_index].free_buf = ((void*)0);
  }






  if (reclaim) {




   if (!rxcb._page_stolen)
    iwl_pcie_hcmd_complete(trans, &rxcb, err);
   else
    IWL_WARN(trans, "Claim null rxb?\n");
  }

  page_stolen |= rxcb._page_stolen;
  offset += ALIGN(len, FH_RSCSR_FRAME_ALIGN);
 }


 if (page_stolen) {
  __free_pages(rxb->page, trans_pcie->rx_page_order);
  rxb->page = ((void*)0);
 }




 spin_lock_irqsave(&rxq->lock, flags);
 if (rxb->page != ((void*)0)) {
  rxb->page_dma =
   dma_map_page(trans->dev, rxb->page, 0,
         PAGE_SIZE << trans_pcie->rx_page_order,
         DMA_FROM_DEVICE);
  if (dma_mapping_error(trans->dev, rxb->page_dma)) {





   __free_pages(rxb->page, trans_pcie->rx_page_order);
   rxb->page = ((void*)0);
   list_add_tail(&rxb->list, &rxq->rx_used);
  } else {
   list_add_tail(&rxb->list, &rxq->rx_free);
   rxq->free_count++;
  }
 } else
  list_add_tail(&rxb->list, &rxq->rx_used);
 spin_unlock_irqrestore(&rxq->lock, flags);
}
