
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsxx_dma {scalar_t__ cmd; int list; int dma_addr; } ;
struct rsxx_cardinfo {int n_targets; TYPE_2__* ctrl; int dev; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {int sw_q_depth; int hw_q_depth; int reads_issued; int discards_issued; int writes_issued; } ;
struct TYPE_4__ {int queue_lock; scalar_t__ e_cnt; TYPE_1__ stats; int queue; int trackers; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HW_CMD_BLK_DISCARD ;
 scalar_t__ HW_CMD_BLK_WRITE ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RSXX_MAX_OUTSTANDING_CMDS ;
 int atomic_sub (int,int *) ;
 int get_dma_size (struct rsxx_dma*) ;
 struct rsxx_dma* get_tracker_dma (int ,int) ;
 int kfree (struct list_head*) ;
 struct list_head* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_splice (struct list_head*,int *) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int push_tracker (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int rsxx_eeh_save_issued_dmas(struct rsxx_cardinfo *card)
{
 int i;
 int j;
 int cnt;
 struct rsxx_dma *dma;
 struct list_head *issued_dmas;

 issued_dmas = kzalloc(sizeof(*issued_dmas) * card->n_targets,
         GFP_KERNEL);
 if (!issued_dmas)
  return -ENOMEM;

 for (i = 0; i < card->n_targets; i++) {
  INIT_LIST_HEAD(&issued_dmas[i]);
  cnt = 0;
  for (j = 0; j < RSXX_MAX_OUTSTANDING_CMDS; j++) {
   dma = get_tracker_dma(card->ctrl[i].trackers, j);
   if (dma == ((void*)0))
    continue;

   if (dma->cmd == HW_CMD_BLK_WRITE)
    card->ctrl[i].stats.writes_issued--;
   else if (dma->cmd == HW_CMD_BLK_DISCARD)
    card->ctrl[i].stats.discards_issued--;
   else
    card->ctrl[i].stats.reads_issued--;

   if (dma->cmd != HW_CMD_BLK_DISCARD) {
    pci_unmap_page(card->dev, dma->dma_addr,
            get_dma_size(dma),
            dma->cmd == HW_CMD_BLK_WRITE ?
            PCI_DMA_TODEVICE :
            PCI_DMA_FROMDEVICE);
   }

   list_add_tail(&dma->list, &issued_dmas[i]);
   push_tracker(card->ctrl[i].trackers, j);
   cnt++;
  }

  spin_lock_bh(&card->ctrl[i].queue_lock);
  list_splice(&issued_dmas[i], &card->ctrl[i].queue);

  atomic_sub(cnt, &card->ctrl[i].stats.hw_q_depth);
  card->ctrl[i].stats.sw_q_depth += cnt;
  card->ctrl[i].e_cnt = 0;
  spin_unlock_bh(&card->ctrl[i].queue_lock);
 }

 kfree(issued_dmas);

 return 0;
}
