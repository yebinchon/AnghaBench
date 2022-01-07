
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_bitmap {int lock; int irq_count; int bitmap; } ;


 int bitmap_find_free_region (int ,int ,int) ;
 int get_count_order (int) ;
 int pr_debug (char*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int msi_bitmap_alloc_hwirqs(struct msi_bitmap *bmp, int num)
{
 unsigned long flags;
 int offset, order = get_count_order(num);

 spin_lock_irqsave(&bmp->lock, flags);




 offset = bitmap_find_free_region(bmp->bitmap, bmp->irq_count, order);
 spin_unlock_irqrestore(&bmp->lock, flags);

 pr_debug("msi_bitmap: allocated 0x%x (2^%d) at offset 0x%x\n",
   num, order, offset);

 return offset;
}
