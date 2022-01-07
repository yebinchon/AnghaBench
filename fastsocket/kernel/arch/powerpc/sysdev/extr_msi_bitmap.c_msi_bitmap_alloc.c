
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_bitmap {unsigned int irq_count; int of_node; int lock; int bitmap; } ;
struct device_node {int dummy; } ;


 int BITS_TO_LONGS (unsigned int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int of_node_get (struct device_node*) ;
 int pr_debug (char*,...) ;
 int spin_lock_init (int *) ;
 int zalloc_maybe_bootmem (int,int ) ;

int msi_bitmap_alloc(struct msi_bitmap *bmp, unsigned int irq_count,
       struct device_node *of_node)
{
 int size;

 if (!irq_count)
  return -EINVAL;

 size = BITS_TO_LONGS(irq_count) * sizeof(long);
 pr_debug("msi_bitmap: allocator bitmap size is 0x%x bytes\n", size);

 bmp->bitmap = zalloc_maybe_bootmem(size, GFP_KERNEL);
 if (!bmp->bitmap) {
  pr_debug("msi_bitmap: ENOMEM allocating allocator bitmap!\n");
  return -ENOMEM;
 }


 spin_lock_init(&bmp->lock);
 bmp->of_node = of_node_get(of_node);
 bmp->irq_count = irq_count;

 return 0;
}
