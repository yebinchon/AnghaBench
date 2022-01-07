
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocop_dma_desc {struct cryptocop_dma_desc* next; scalar_t__ from_pool; struct cryptocop_dma_desc* free_buf; } ;


 int DEBUG (int ) ;
 struct cryptocop_dma_desc* descr_pool_free_list ;
 int descr_pool_lock ;
 int descr_pool_no_free ;
 int kfree (struct cryptocop_dma_desc*) ;
 int printk (char*,struct cryptocop_dma_desc*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_cdesc(struct cryptocop_dma_desc *cdesc)
{
 DEBUG(printk("free_cdesc: cdesc 0x%p, from_pool=%d\n", cdesc, cdesc->from_pool));
 kfree(cdesc->free_buf);

 if (cdesc->from_pool) {
  unsigned long int flags;
  spin_lock_irqsave(&descr_pool_lock, flags);
  cdesc->next = descr_pool_free_list;
  descr_pool_free_list = cdesc;
  ++descr_pool_no_free;
  spin_unlock_irqrestore(&descr_pool_lock, flags);
 } else {
  kfree(cdesc);
 }
}
