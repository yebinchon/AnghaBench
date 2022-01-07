
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_tx_queue {scalar_t__ txd_dma; struct mwl8k_tx_desc* txd; int * skb; scalar_t__ tail; scalar_t__ head; scalar_t__ len; } ;
struct mwl8k_tx_desc {int next_txd_phys_addr; scalar_t__ status; } ;
struct mwl8k_priv {int pdev; struct mwl8k_tx_queue* txq; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_TX_DESCS ;
 int cpu_to_le32 (scalar_t__) ;
 int * kcalloc (int,int,int ) ;
 int memset (struct mwl8k_tx_desc*,int ,int) ;
 struct mwl8k_tx_desc* pci_alloc_consistent (int ,int,scalar_t__*) ;
 int pci_free_consistent (int ,int,struct mwl8k_tx_desc*,scalar_t__) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int mwl8k_txq_init(struct ieee80211_hw *hw, int index)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_tx_queue *txq = priv->txq + index;
 int size;
 int i;

 txq->len = 0;
 txq->head = 0;
 txq->tail = 0;

 size = MWL8K_TX_DESCS * sizeof(struct mwl8k_tx_desc);

 txq->txd = pci_alloc_consistent(priv->pdev, size, &txq->txd_dma);
 if (txq->txd == ((void*)0)) {
  wiphy_err(hw->wiphy, "failed to alloc TX descriptors\n");
  return -ENOMEM;
 }
 memset(txq->txd, 0, size);

 txq->skb = kcalloc(MWL8K_TX_DESCS, sizeof(*txq->skb), GFP_KERNEL);
 if (txq->skb == ((void*)0)) {
  pci_free_consistent(priv->pdev, size, txq->txd, txq->txd_dma);
  return -ENOMEM;
 }

 for (i = 0; i < MWL8K_TX_DESCS; i++) {
  struct mwl8k_tx_desc *tx_desc;
  int nexti;

  tx_desc = txq->txd + i;
  nexti = (i + 1) % MWL8K_TX_DESCS;

  tx_desc->status = 0;
  tx_desc->next_txd_phys_addr =
   cpu_to_le32(txq->txd_dma + nexti * sizeof(*tx_desc));
 }

 return 0;
}
