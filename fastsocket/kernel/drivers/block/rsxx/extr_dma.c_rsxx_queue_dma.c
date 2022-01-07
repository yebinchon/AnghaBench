
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int off; unsigned int cnt; } ;
struct rsxx_dma {unsigned int laddr; unsigned int pg_off; int list; struct page* page; TYPE_1__ sub_page; void* cb_data; int cb; int cmd; } ;
struct rsxx_cardinfo {int dummy; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;
typedef int rsxx_dma_cb ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HW_CMD_BLK_READ ;
 int HW_CMD_BLK_WRITE ;
 int dev_dbg (int ,char*,char,unsigned int,unsigned int,unsigned int,struct page*,unsigned int) ;
 struct rsxx_dma* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int rsxx_dma_pool ;

__attribute__((used)) static int rsxx_queue_dma(struct rsxx_cardinfo *card,
         struct list_head *q,
         int dir,
         unsigned int dma_off,
         unsigned int dma_len,
         unsigned int laddr,
         struct page *page,
         unsigned int pg_off,
         rsxx_dma_cb cb,
         void *cb_data)
{
 struct rsxx_dma *dma;

 dma = kmem_cache_alloc(rsxx_dma_pool, GFP_KERNEL);
 if (!dma)
  return -ENOMEM;

 dma->cmd = dir ? HW_CMD_BLK_WRITE : HW_CMD_BLK_READ;
 dma->laddr = laddr;
 dma->sub_page.off = (dma_off >> 9);
 dma->sub_page.cnt = (dma_len >> 9);
 dma->page = page;
 dma->pg_off = pg_off;
 dma->cb = cb;
 dma->cb_data = cb_data;

 dev_dbg(CARD_TO_DEV(card),
  "Queuing[%c] laddr %x off %d cnt %d page %p pg_off %d\n",
  dir ? 'W' : 'R', dma->laddr, dma->sub_page.off,
  dma->sub_page.cnt, dma->page, dma->pg_off);


 list_add_tail(&dma->list, q);

 return 0;
}
