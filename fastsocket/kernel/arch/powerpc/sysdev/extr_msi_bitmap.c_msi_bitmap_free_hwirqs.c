
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_bitmap {int lock; int bitmap; } ;


 int bitmap_release_region (int ,unsigned int,int) ;
 int get_count_order (unsigned int) ;
 int pr_debug (char*,unsigned int,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void msi_bitmap_free_hwirqs(struct msi_bitmap *bmp, unsigned int offset,
       unsigned int num)
{
 unsigned long flags;
 int order = get_count_order(num);

 pr_debug("msi_bitmap: freeing 0x%x (2^%d) at offset 0x%x\n",
   num, order, offset);

 spin_lock_irqsave(&bmp->lock, flags);
 bitmap_release_region(bmp->bitmap, offset, order);
 spin_unlock_irqrestore(&bmp->lock, flags);
}
